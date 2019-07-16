<template>
    <div class="app">
        <!-- 返回图标 -->
        <Titlebar title="购买" :back="myBack"></Titlebar>
        <!-- 全部元素都要放在一个div里 -->
        <div class="shouhuo">
            <div class="reseiver">收货人:{{uname}}</div>
            <div class="shouhuoren">
            联系方式：<input id="input1" type="text" :value="this.list1.phone">
            </div>
        </div>
        <div class="shouhuo_address">
            <div class="address">收货地址</div>
            <div class="address_details">
                <textarea name=""  cols="30" rows="10" id="text2" :value="this.list1.address" ></textarea>
            </div>
        </div>
        <div class="wider">
            <span>购买商品</span>
            <div class="product" v-for="item of this.list" :key="item.id">
                <img :src=item.pic alt="">
                <div class="product_detail">
                    <div class="product_name" id='pname'>{{item.pname}}</div>
                    <div class="product_price">￥{{item.price}}</div>
                    <div class="product_count">数量：{{item.count}}</div>
                    <div class="sum">总计：{{item.price*item.count}}</div>
                </div>
           </div>
        </div>
        <div class="soler"> 
           <span>卖家留言：</span>
            <textarea type="text" placeholder="顺丰邮，谢谢" id="text1" class="text"></textarea>
        </div>
        <div class="aa">
            <div class="heji">合计：￥{{sum}}</div>
            <div class="buy" @click="buy">购买</div>
        </div> 
    </div>
</template>
<script>
    import {Toast} from "mint-ui"
    import Titlebar from "./common/Titlebar.vue"
    export default {
        data(){
            return{
                list:"",
                sum:0,
                uname:"",
                list1:""
            }
        },
        components:{Titlebar},
        created(){this.loadMore() },
        methods:{
            myBack(){
                this.$router.push("/");
            },
            loadMore(){
                var uname=sessionStorage.getItem("uname")
                this.uname=uname
                var uid=sessionStorage.getItem("uid")
                // console.log(uid)1
                if(uid==null){
                    Toast("请先登录")
                    return
                }
                
                var url="http://127.0.0.1:3000/user_information?uid="+uid
                this.axios.get(url).then(result=>{
                    this.list=result.data.data
                     var b=0
                    for(var i=0;i<this.list.length;i++){
                        b+=this.list[i].price*this.list[i].count
                    }
                    this.sum=b
                })
                //查找用户信息
                var obj={uid:uid}
                console.log(uid)
                var url="http://127.0.0.1:3000/user_info"
                this.axios.get(url,{params:obj}).then(result=>{
                    this.list1=result.data.data[0]
                    console.log(this.list1)
                })
        
            },
            buy(){
                if(this.list.length==0){
                    Toast("请先选择商品")
                    return
                }
                var text=document.getElementById("text1").value
                var address=document.getElementById("text2").value
                console.log(address)
                var telphone=document.getElementById("input1").value
                console.log(telphone)
                var pname=document.getElementById("pname").innerHTML
                // 用户点击购买按钮，首先将数量更新到this.list的count中
                    // 首先获取到页面中
                // 将数据插入一个新表中，
                // 创建一个变量，来保存ids 和counts
                var ids=[]
                for(var a=0;a<this.list.length;a++){
                    ids.push(this.list[a].pid)
                }
                var counts=[]
                for(var a=0;a<this.list.length;a++){
                    counts.push(this.list[a].count)
                }
                var price=this.sum;
                console.log(price+"88888")
                var uid=sessionStorage.getItem("uid");

                var url="http://127.0.0.1:3000/buy?id="+ids+"&count="+counts+"&liuyan="+text+"&address="+address+"&phone="+telphone+"&price="+price+"&uid="+uid+"&lname="+pname
                this.axios.get(url).then(result=>{
                        console.log(result.data.msg)
                        Toast(result.data.msg)
                        this.$router.push({
                            path:"/"
                        })
                    })
            }        
        }
        
    }
</script>
<style scoped>
    .text{
       width:260px;
       height:50px; 
       margin-left:10px;
    }
    #input1{
        width:200px;
        height:30px;
        border:0
    }
    .wider span{
        display:block;
        margin:10px 0 10px 0px;
        padding:5px;
    }
    #abc{
        position: absolute;
        z-index: 110;
        margin-left: 11px;
        margin-top: 8px;
        color: white;
        font-size: 29px !important;
    }
    textarea{
        height: 70px !important;
    }
    .buy{
        height: 43px;
        width: 70px;
        line-height: 43px;
        text-align:center;
        background: orange;
        border-radius: 5px;
        margin-top: 5px;
        margin-left: 110px;
    }
    .soler span{
        display:block;
        margin-bottom:10px;

    }
    .aa{
        width: 100%;
        display: flex;
        position: fixed;
        bottom: 0px;
        height: 55px;
        background: white;
       
    }
    .wider{
        background: #f4f4f4;
        margin-bottom: 20px;
    }
    .heji{
        margin-top: 20px;
        color: red;
        width: 150px
    }
    .soler{
        margin-bottom: 81px;
    }
    .sum{
        color: orange
    }
    .product_count{
        font-size: 14px;
    }
    .product_price{
        color: orange;
    }
    .product_name{
        font-size: 14px;
    }
    .product_detail{
        margin-left: 15px;
    }
    .product{
        margin-left: 16px;
        display: flex;
        margin-top:10px;
        padding-bottom:10px;
    }
    .product img{
        width: 30%;
        height: 20%;
    }
    .shouhuo_address{
        margin-top: 5px;
        margin-left: 30px;
    }
    .address{
        margin-bottom: 10px;
        
    }
    .address_details{
        width: 92%;
        margin-left:10px;
    }
    .shouhuo{
        display: flex;
        justify-content: space-around;
        background:#e4e4e4;
        flex-direction: column;
        padding-left: 30px;
     }
    .reseiver{
        height: 50px;
        line-height: 50px;
    }
    .shouhuoren{
        height: 50px;
        line-height: 50px;
        margin-right: 39px;
    }
       
    </style>
    
    
    