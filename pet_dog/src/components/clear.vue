<template>
    <div class="apps">
        <Titlebar title="狗狗用品-清仓特价" :back="myBack"></Titlebar>
        <div class="header">
          <img src="https://img2.epetbar.com/2019-01/29/14/17f04abde265bbbbd4f8c9953483645e.jpg@!water" alt="">
        </div>
        <myContent :list="list" ></myContent>
      </div>
    </template>
    <script>
       import Titlebar from "./common/Titlebar.vue"
       import myContent from "./common/content.vue"
        export  default{
            data(){
                return{
                   list:[]
                }
            },
            // 子组件
            components:{Titlebar,myContent},
          created(){
            this.load();
          },
         methods:{
            load(){
            // 发送ajax请求
            var url="http://127.0.0.1:3000/clear?id=3"
                this.axios.get(url).then(res=>{
                this.list=res.data
                    console.log(this.list)
                })
            },
            myBack(){
                this.$router.push("/"); 
            },
        },
      }
    </script>
    <style scoped>
      .apps .header img{
          height:130px;
      }
      .apps .now{
          display:none !important;
      }
    </style>