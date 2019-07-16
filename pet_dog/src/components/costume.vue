<template>
    <div class="app">
        <TitleBar title="服饰详情"  :back="myBack"></TitleBar>
        <div class="carouel">
            <mt-swipe :auto="3000">
                <mt-swipe-item>
                    <img src="../../../back/public/imgs/header1.jpg" alt="">
                </mt-swipe-item>
                <mt-swipe-item>
                    <img src="../../../back/public/imgs/header2.jpg" alt="">
                </mt-swipe-item>
                <mt-swipe-item>
                    <img src="../../../back/public/imgs/header4.jpg" alt="">
                </mt-swipe-item>
            </mt-swipe>   
        </div>
    <myContent :list="list" ></myContent>
  </div>
</template>
<script>
   import TitleBar from './common/Titlebar.vue'
   import myContent from "./common/content.vue"
    export  default{
        data(){
            return{
               list:[]
            }
        },

      created(){
        this.load();
      },
     methods:{
        load(){
        // 发送ajax请求
            var url="http://127.0.0.1:3000/costume?id=2"
            this.axios.get(url).then(res=>{
            this.list=res.data
                console.log(this.list)
            })
        },
        myBack(){
            this.$router.push("/")
        }
    },
    components:{TitleBar,myContent}
  }
</script>
<style scoped>
  .app .carouel img{
      width:320px;
      height:180px;
      margin-left:20px;
      margin-top:5px;
  }
</style>