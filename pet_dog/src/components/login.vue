<!-- 一个vue组件就是一个网页，包括HTML模板、js、样式 -->
<!-- 1.创建HTML模板 -->
<template>
    <div class="appa"> 
        <!-- <p class="lname">WoWo宠</p> -->
        <Titlebar title="登录" :back="myBack"></Titlebar>
        <mt-navbar class="mt_bar"> 
            <mt-tab-item id="1"><router-link to="/">首页</router-link></mt-tab-item>
            <mt-tab-item id="2"><router-link to="/reg">去注册</router-link></mt-tab-item>
             <!-- <mt-tab-item id="3"><router-link to="/Cart">我的购物车</router-link></mt-tab-item>  -->
        </mt-navbar>       
        <div class="login">
            <mt-field class="mb_1"  placeholder="请输入用户名" v-model="uname"></mt-field>
            <mt-field class="mb_1"  placeholder="密码" type="password" v-model="upwd"></mt-field>
        </div> 
        <mt-button size="large" type="primary" class="denglu" @click=btnLogin>登录</mt-button>
        <mt-button size="large" type="primary" class="zhuce" @click="register">注册</mt-button>
    </div>
</template>
<!-- 创建javascript -->
<script>
    //在export之前引入项目中需要的组件
import {Toast} from "mint-ui"
import Titlebar from './common/Titlebar'
    export default{
        data(){
            return{       
                uname:"",
                upwd:""
            }      
        },
        methods:{
            myBack(){
                this.$router.push("/")
            },
            register(){
                this.$router.push({
                    path:"/reg"
                })
            },
            btnLogin(){
                  var uname=this.uname;
                  var upwd=this.upwd;               
                    var url = "http://127.0.0.1:3000";
                    url+="/user_login?uname="+uname+"&upwd="+upwd;
                    this.axios.get(url).then(result=>{
                        if(result.data.code==1){
                        Toast({
                            message:"登录成功",
                            duration:2000
                        });
                        var a=result.data.data[0]
                        var uid=a.uid
                        var uname=a.uname
                        sessionStorage.setItem("uid",uid)
                        sessionStorage.setItem("uname",uname)  
                        this.$router.push("/")
                    }else{
                        Toast("登录失败")
                    }
                })
            }
        },
        components:{Titlebar}
    }
</script>
<style scoped>
    .appa{
        text-align: left;
    }
 
    .mt_bar{
        display: flex;
        justify-content: space-between;
        padding-left: 10px
    }
    button{
     margin: 0;
     margin-top:10px;
    }
    a{
        font-size:15px;
    }
    .mb_1{
        border-bottom: 1px solid #d0d0d0;
    }
</style>