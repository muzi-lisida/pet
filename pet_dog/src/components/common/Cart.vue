<template>
  <div>
    <TitleBar title="购物车" :click="myClick" :back="myBack"></TitleBar>
    <div></div>
    <div class="ordertip-h"  style="height: 40px;" v-if="list.length>0">
      <div class="ordertip">
        <span ></span>
        <span ></span>
        <div class="checkbox mycart-tit pad10 bgfff" >
          <input @click="checkAll" :checked="allcb" type="checkbox" value="1" name="order" id="checkboxInputWid1" >
          <label for="checkboxInputWid1">
            <span class="afff mr5 fl store" >E宠西部中央仓</span>
          </label>
          <a href="javascript:;" >
            <b class="bold ftc fl cartc-btn helpico" >?</b>
          </a>
          <mt-button type="danger" @click="delCb" class="delll">删除所选商品</mt-button>
        </div>
      </div>
     </div>
     <ul >
      <li class="cartlist" v-for="(item,i) of list" :key="item.id">
        <div class="lis checkbox" >
          <input type="checkbox" class="cbs" :data-i="i" :checked="item.cb" @change="modifyItem" value="1" name="order" id="checkboxInputWid1">
          <img :src=item.pic alt="">
          <span class="pname">{{item.tname}}</span>
          <span class="price">￥{{item.price}}</span>
          <div class="mui-numbox">
            <button type="button" @click="suplus($event)" :data-toggle="count" :data-id="i">-</button>
            <span id="count">{{item.count}}</span>
            <button type="button" @click="add"  :data-i="i">+</button>
          </div>
          <input type="button" value="删除" class="del" @click="del" :data-id="item.id" :checked="item.cb" >
        </div>
      </li>
    </ul>
    <div v-if="list.length>0">
      <div class="mui-card-content">
        <div class="jine">
          <span>金额：</span>
          <span id="sum">{{sum}}</span>元
        </div>
        <router-link to="/">
          <span class="continue">继续购物</span>
        </router-link>
        <div class="jiesuan" @click="jiesuan($event)" data-id="i">结算</div>
      </div>
    </div>
    <div class="pos_a" v-if="list.length==0" >
       <div class="bitmap-nocontent bitmap ct"></div> 
       <p class="ftc ft15 c666 mt15 p_a">暂无宝贝</p> 
    </div>
   
    <!-- <div class="checkbox-order1 overflow" >
      <div class="checkbox mycart-pro pl">
        <span></span>
        <span></span>
        <input type="checkbox" value="237838" name="goods" checked="" id="goodsCheck237838">
        <div class="cart-proli pb10" >
          <div class="spli1 rela">
            <div class="cart-img rela overflow loadimg-fixed">
              <a class="block">
                <img src="https://img2.epetbar.com/2018-03/30/09/94ae6410d1578468833d787611bc7fa8.png@!200w-b" class="image">
                <span></span>
              </a>
            </div>
            <div class="cart-font pr">
              <a  class="block">
                <h1 class="c333">
                  <span></span>
                  <span>禾仕嘉 远洋鲜鱼狗零食 200g</span>
                </h1>
              </a>
              <span></span>
              <div class="mt c89">
                <b class="mr3">
                  <span class="ft12">¥</span>
                  <span class="ft15 bold">29.00</span>
                </b>
                <div class="buynum-wrap clearfix fr">
                  <span class="fl subnum bold">─</span>
                  <div class="text buynum ftc fl cart_buynum_txt">
                    <input type="text" value="2" size="2">
                  </div>
                  <span class="fl addnum ft18">+</span>
                </div>
              </div>
            </div>
          </div>
          <span></span>
        </div>
      </div>
      <div class="delete-pro cfff ft15">
        <div class="move-del">
          <div class="move-delfont">删除</div>
        </div>
      </div>
    </div> -->
  </div>
</template>

<script>
import TitleBar from './Titlebar.vue'
import {Toast,MessageBox} from "mint-ui"
export default {
  data(){
    return{
      list:[],
      count:1,
      allcb:false,
      sum:""
    }
  },
  created(){
    this.loadMore()
  },
  methods:{
    myBack(){
      this.$router.push("/");
    },
    myClick(){

    },
    jiesuan($event){
      console.log(1)
      if(this.list.length==0){
        Toast("请选择商品");
        return
      }
      var list=this.list
      // 1.遍历商品
      this.hanshu()
      var i=$event.target.dataset
      var ids=[]
      var counts=[]
      for(var item of this.list){
        ids.push(item.id)
        counts.push(item.count)
      };
      // 点击去结算，应该向数据库更新数据
      console.log(5555555)
      var url="http://127.0.0.1:3000/cart?id="+ids+"&count="+counts
      this.axios.get(url).then(result=>{
        // 请求成功后，跳转到个人信息页面，并把商品id传递过去，
        // 1.需要判断是否登录,只有登录成功了,才能实现跳转
        console.log(66666666)
        var uid=sessionStorage.getItem("uid");
        if(uid==null){
          Toast("请先登录")
        }else{
          this.$router.push({
            path:"/own"
          })
        }
      }).catch(function(err){
        console.log(err)
      })

    },
    //点击-按钮，实现数据的减1
    suplus($event){
      // 获取当前元素的下标
      var id=$event.target.dataset.id;
      var inner=$event.currentTarget.nextElementSibling.innerHTML
      var a=--inner
      if(a<1){
        $event.currentTarget.nextElementSibling.innerHTML=1
        this.list[id].count=$event.currentTarget.nextElementSibling.innerHTML
      }else{
        $event.currentTarget.nextElementSibling.innerHTML=a
        this.list[id].count=$event.currentTarget.nextElementSibling.innerHTML
      }
      if(this.count<0){
        this.count==1
      }
      this.hanshu()
    },
    //点击+按钮，实现数据的加1
    add($event){
      var id=$event.target.dataset.i;
      var inner=$event.currentTarget.previousElementSibling.innerHTML
      var a=++inner
      this.hanshu()
      $event.currentTarget.previousElementSibling.innerHTML=a
      this.list[id].count=$event.currentTarget.previousElementSibling.innerHTML
    },
    //删除全部
    delCb(){
      MessageBox.confirm("您确定要删除指定商品吗").then(action=>{
        var ids=""
        // 购物车列表
        for(var item of this.list){
          console.log(item.cb)//false是否选中
          if(item.cb){
            ids+=item.id+","
          }
          console.log(ids)//2选中的id
          console.log(item.id)//4 id
        }
        if(ids.length==0){
          Toast("请选中要删除的商品");
          return ;
        }
        //将ids的最后一个逗号去掉，这一步s
        ids=ids.substring(0,ids.length-1);
        console.log(ids)
        //发送ajax请求
        var url="http://127.0.0.1:3000/deleteCb?ids="+ids
        this.axios.get(url).then(result=>{
          console.log(result)
          if(result.data.code==1){
            Toast("删除成功")
            this.loadMore()
          }else{
              // 用户按了取消键则执行这里的代码
            // console.log("你按了取消键") 测试 成功
            Toast("删除失败")
          }
        })
      }).catch(result=>{
        return;
      })
    },
    // 全选
    checkAll(e){
      // 先获取当前复选框的选中状态
      var cb=e.target.checked
      //  遍历所有商品的选中状态
      for(var item of this.list){
        // 将复选框的选中状态赋值给每个商品
        item.cb=cb;
      }
      this.allcb=cb
      if(this.allcb==false){
        this.sum=0
      }else{
        this.hanshu()
      }
    },
    // 单选按钮
    modifyItem(e){
      //功能:如果用户选中商品，将当前商品对应对象
      //1:获取当前元素选中状态
      var cb=e.target.checked;
      //2:获取当前元素对应商品对象
      //2.1:获取当前元素下标   01
      var i=e.target.dataset.i;
      //2.2:将数组下标对象
      this.list[i].cb=cb;
      //3:修改商品对象cb 属性
      
      //4:修改全选状态 true fales  17:32
      //4.1:如果完成  累加计算
      //4.2:创建变量count 保存累加和
      var count = 0;
      //4.3:创建循环遍历所有元素
      //4.4:获取cb如果值等于true count++
      for(var item of this.list){
          if(item.cb){
            count++;
          }
      }
      //4.5:如果count个数与数组长度一致
      if(count==this.list.length){
        this.allcb = true       
      }else{
        this.allcb = false;
      }
    },
    //获取购物车列表
    loadMore(){
      // 判断是否登录成功
      var uid=sessionStorage.getItem("uid");
      if(uid==null){
        Toast("请先登录");
        return;
      }
      var obj={uid:uid}
      var url="http://127.0.0.1:3000/queryCart"
      this.axios.get(url,{params:obj}).then(result=>{ 
        // 1.先获得list数据
        var rows=result.data;
        for(var item of rows){
          // 通过遍历为每个复选框添加属性cb
          item.cb=true
          this.allcb=item.cb
        }
        // 将添加新属性的rows,赋值回全局变量
        this.list=rows;
        // 只有请求成功后才能执行计算综合操作啊
        // 获取页面相应元素的值
        // 把值相加起来，并赋值给sum
        this.hanshu()
      })
    },
    //计算价格
    hanshu(){
      var list=this.list;
      var a=0;
      for(var i=0;i<list.length;i++){
        a+=list[i].count*list[i].price
      }
      this.sum=parseFloat(a.toFixed(2))
    },
    // 用户在删除商品时，需要提示用户再确认是否要删除商品，用组件MessageBox组件
    del(e){
      // 删除的是购物车的商品，所以要从模板中动态获取用户选中的商品
      var id=e.target.dataset.id
      var obj={id:id}
      // 确认用户是否确认删除该商品
      MessageBox.confirm("是否确认删除该商品").then(action=>{
        var url="http://127.0.0.1:3000/delete"
          this.axios.get(url,{params:obj}).then(result=>{
            if(result.data.code==1){
              Toast("删除成功");
              this.loadMore();
            }else{
              Toast("删除失败")
            }
          })
        }).catch(result=>{
          return
        })
      }
    },
    components:{TitleBar}
  }
  

</script>

<style scoped>
 .c666 {
    color: #666;
  }
  .ft15 {
    font-size: 15px;
  }
  .mt15 {
    margin-top: 15px;
  }
  .ftc {
    text-align: center;
  }
  .p_a{
    position: absolute;
    left: 154px;
    top:270px;
  }
 .cartlist{
    height:80px;
    display: flex;
    align-items: center;
    flex-flow: row nowrap;
  }
  .lis{
    display:flex;
    align-items: center;
    justify-content: space-between;
    flex-flow: row nowrap;
    padding: 5px;
  }
  .lis img{
    width:50px;
    height:50px;
    margin-top:15px;
    border:1px solid #f3f3f3;
  }
  .pname{
    display:inline-block;
    margin:26px 10px 10px 5px;
    width:120px;
    white-space:nowrap;
    overflow:hidden;
    text-overflow:ellipsis;
  }
  .price{
    display:inline-block;
    margin-top:28px;
    color:#ff6700
  }
  .mui-numbox{
    width:45px;
    height:40px;
    margin:28px 0 10px 10px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-flow: row nowrap;
  }
  .mui-numbox button{
    width:15px;
    display: block;
  }
  .del{
    width:30px;
    height:25px;
    margin:28px 0px 10px 3px;
  }
  .chball{
    margin-left:30px;
  }
  .cbs{
    margin-top: 20px;
  }
  .sum{
    color:#ff6700;
    font-weight: 700;
    font-size:20px;
  }
  .mui-card-content{
    height: 50px;
    bottom: 60px;
    /* position:fixed; */
    width: 100%;
    background: white;
    display: flex;
    justify-content: space-between;
  }
  .mui-card-content .jine{
    width: 35%;
    text-align: left;
    line-height: 68px;
  }
  .mui-card-content .continue{
    width: 203%;
    line-height: 68px;
    text-align: center;
    background: #f4f4f4
  }
  .mui-card-content .jiesuan{
    line-height: 50px;
    width: 35%;
    text-align: center;
    background: #ff6700;
    border-radius: 10px;
  }
  .mycart-tit {
    border: none;
    height: 35px;
  }
  .checkbox {
    width: 100%;
    position: relative;
  }
  .bgfff {
    background: #fff;
  }
  .pad10 {
    padding: 5px;
  }
  .checkbox input[type=checkbox]:checked {
    background: #ea5858;
    border: 1px solid #ea5858;
  }
  .checkbox input[type=checkbox]{
    position: relative;
    display: inline-block;
    width: 20px;
    height: 20px;
    -webkit-appearance: none;
    background: #fff;
    border: 1px solid #d7d7d7;
    border-radius: 50%;
    outline: 0!important;
    float: left;
  }
  .checkbox input[type=checkbox]:checked:before {
    content: "";
    font-family: Muiicons;
    font-size: 18px;
    font-weight: 400;
    color: #fff;
    text-decoration: none;
    background: 0 0;
    border-radius: 0;
    opacity: 1;
    border: 2px solid #fff;
    border-top: none;
    border-right: none;
    -webkit-transform: rotate(-45deg);
    transform: rotate(-45deg);
    -webkit-font-smoothing: antialiased;
    left: 3px;
    top: 5px;
    position: absolute;
    width: 10px;
    height: 4px;
  }
  .checkbox label {
    cursor: pointer;
    margin-left: 2.5em;
    display: block;
    outline: none;
  }
  .mycart-tit span.store {
    background: none;
    color: #333;
    font-size: 15px;
    margin-right: 0;
    padding: 0px 5px 1px 0px;
  }
  .helpico {
    background: #fbeacf;
    border: 1px solid #fbeacf;
    color: #ecb44b;
    border-radius: 50%;
    width: 18px;
    height: 18px;
    line-height: 16px;
    display: inline-block;
    font-size: 13px;
    margin-top: 0px;
    text-align: center;
  }
  .delll{
    margin-left:75px;
    height: 35px;
  }
  .pos_a{
    position: relative;
    height: 400px;
  }
  .bitmap {
    background: url("../../assets/img/bitmap404.5c8694aa.png") 0 0 no-repeat;
    background-size: 200px auto;
    height: 180px;
    width: 200px;
    background-position: 0 -812px;
    position: absolute;
    left: 93px;
    top:110px;
    text-align: center; 
  }
</style>
