<template>
    <div class="app">
        <Titlebar title="注册" :back='myBack'></Titlebar>
        <div class="title">  
            <!-- <p class="lname">WoWo宠</p> -->
            <p class="rout">
                <router-link to="/">首页</router-link>
                <router-link to="/login">直接登陆</router-link>
            </p>
        </div> 
        <div class="users">
            <mt-field class="mb_1"  placeholder="请输入用户名" v-model="username"></mt-field>
            <mt-field class="mb_1"  placeholder="密码" type="password" v-model="password"></mt-field>
            <mt-field class="mb_1"  placeholder="再次确认密码" type="password" v-model="repassword"></mt-field>
            <mt-field class="mb_1"  placeholder="手机号" type="tel" v-model="phone"></mt-field>
            <mt-field class="mb_1"  placeholder="收货地址"  v-model="address"></mt-field>      
            <mt-button type="primary" size="large" @click="btnReg">注册</mt-button>
        </div>
    </div>
</template>
<script>
 import { Toast } from 'mint-ui';
 import Titlebar from './common/Titlebar'
  export default{
      data(){
        return{
           username:"",
           password:"",
           repassword:"",
           phone:"",
           address:""
        }
      },
      methods:{
        btnReg(){
            var uname=this.username
            var reupwd=this.repassword
            var upwd=this.password
            var phone=this.phone
            var address=this.address
            if(uname==""){
                Toast("用户名不能为空")
                return;
            }else if(upwd==""){
                Toast("密码不能为空")
                return;
            }else if(reupwd==""){
                Toast("确认密码不能为空")
                return;
            }else if(phone==""){
                Toast("联系方式不能为空")
                return;
            }else if(address==""){
                Toast("地址不能为空")
                return;
            }else if(upwd!=reupwd){
                Toast("密码不一致")
                return;
            }else{
                // console.log("输入合格")
                // 用户输入都合格，向数据库中插入数据
                var url="http://127.0.0.1:3000/user_add?uname="+uname+"&upwd="+upwd+"&phone="+phone+"&address="+address
                this.axios.get(url).then(result=>{
                    console.log(result.data.data)
                    Toast(result.data.data)
                    location.href="/"
                })
            }
        },
        myBack(){
            this.$router.go(-1)
        }

    },
    components:{Titlebar}
}
</script>
<style scoped>
    .title{
        display:flex;
        color:#459d36;
    }

    .rout{
        width: 100%;
        color:#459d36; 
        display: flex;
        justify-content: space-between;
    }
    .rout>a{
        padding-left: 5px;
        padding-right: 5px;
    }
    a{
        display: block;
    }
     .mb_1{
        border-bottom: 1px solid #d0d0d0;
    }
</style>