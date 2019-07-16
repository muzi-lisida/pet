<template>
    <div class="container">
        <!-- <div class="lname">WoWo宠</div> -->
        <Titlebar title="商品详情"  :back="myBack"></Titlebar>
        <mt-navbar> 
            <mt-tab-item id="1"><router-link to="/">首页</router-link></mt-tab-item>
            <!-- <mt-tab-item id="2"><router-link to="/">小萌书</router-link></mt-tab-item> -->
            <mt-tab-item id="3"><router-link to="/">我的购物车</router-link></mt-tab-item> 
        </mt-navbar>  
            <ul class="titles" v-for="(item,i) of list" :key="i">    
                <li class="imgs"><img :src=item.pic alt=""></li>
                <li class="titlea">{{item.title}}</li>
                <li class="subtit">{{item.subtit}}</li>
                <li class="p1">市场价：￥{{item.price1}}</li>
                <li class="p2">WO宠价：￥{{item.price2}}</li>
                <li class="sale">
                    <span>已售:{{item.sale}}袋</span>
                    <span>评价:{{item.comment}}</span>
                    <span>赠送:最多3W宠币</span>
                </li>
                <li class="promise">
                    <span>
                        <img src="https://static.epetbar.com/static_wap/appmall/lib/goods/qualityassurance.png" alt="">
                        正品保障
                    </span>
                    <span>
                        <img src="https://static.epetbar.com/static_wap/appmall/lib/goods/freeshipping.png" alt="">
                        99元包邮
                    </span>
                    <span>
                        <img src="https://static.epetbar.com/static_wap/appmall/lib/goods/thirtydays.png" alt="">
                        30天退货
                    </span>
                </li>
                <div class="bt">
                    <mt-button type="danger" @click="addProduct" :data-toggle="item.lid">加入购物车</mt-button>
                    <mt-button type="danger">立即购买</mt-button>
                </div>
            </ul>  
      
    </div>
</template>
<script>
 import {Toast} from "mint-ui"
 import Titlebar from "./common/Titlebar.vue"
export default{
    data(){
        return{
            list:[],
        }
    },
    created(){
        this.loadMore()
    },
    methods:{
        //用户点击加入购物车按钮,
        //首先判断用户有没有登录，如果为登录，则提示用户登录，
        //如果用户已登录，则显示已登录用户的购物车
        addProduct(e){
            var uid=sessionStorage.getItem("uid");
            console.log(uid)
            if(uid==null){
                Toast({
                    message:"请先登录",
                    position:"bottom",
                    duration:1000
                });
                return;
            }else{
                 // 获取该商品的编号lid,用自定义属性
                var lid=e.target.dataset.toggle
                // 向后台发送axios
                console.log(1231564)
                var obj={uid:uid}
                var url="http://127.0.0.1:3000/add?lid="+lid
                this.axios.get(url,{params:obj}).then(result=>{
                    var a=result.data.code
                    if(a==2){
                        Toast({
                            message:"购物车中已有该商品",
                            position:"bottom",
                            duration:1000
                        });
                    }else if(a==1){
                        Toast({
                            message:"加入购物车成功",
                            position:"bottom",
                            duration:1000
                        })
                    }
                })
            }
        },
        loadMore(){
            var lid=this.$route.query.lid;
            var url="http://127.0.0.1:3000/details?lid="+lid
            this.axios.get(url).then(result=>{
                this.list=result.data.data
                console.log(this.list)
            })
        },
        myBack(){
            this.$router.go(-1)
        }
    },
     components:{Titlebar},
}
</script>
<style scoped>
  .titles,li{
      padding-top:12px;
   }
   a{
    font-size:15px;
    /* color:#459d36; */
    margin-left:-5px;
   } 
  .container .login{
    width:120px;
    font-size:26px;
    font-weight:700;
    font-style: italic;
    color:#459d36; 
  }
  ul{
    list-style:none;

  }

  .imgs img{
    width:300px;
    height:200px;
  }
  .titlea{
    font-size:14px;
  }
  .subtit{
      color: #e3393c;
      font-size:12px;
      /* margin-top:5px;
      margin-bottom:12px; */
  }
  .p1,.p2{
      background-color:#f3f3f3;
      padding:10px;
      margin:0;
   }
  .p1{
      font-size:14px;
   }
  .p2{
      font-size:16px;
      color:#e3393c;
  }
  .sale{
      font-size:13px;
  }
  .sale span{
      margin-left:10px;
      margin-right:10px;
  }
  .promise{
      display: flex;
      flex-flow: row nowrap;
      align-items: center;
      font-size:12px;
      vertical-align: middle;
  }
   .promise span{
       display: block;
   }
  .bt{
      display: flex;
      justify-content: space-between;
      padding-top: 80px;
   }
</style>