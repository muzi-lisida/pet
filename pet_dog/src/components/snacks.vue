<template>
    <div class="ap">
        <Titlebar title="肉制零食" :back="myBack"></Titlebar>   
       <div class="head">
           <img src="../assets/imgs/2.jpg" alt="">
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
    created(){
      this.load();
    },
    methods:{
      load(){
        // 发送ajax请求
        var url="http://127.0.0.1:3000/snacks?id=1"
        this.axios.get(url).then(res=>{
        console.log(res.data);
        this.list=res.data
          console.log(this.list)
        })
      },
      myBack(){
        this.$router.push("/"); 
      }
    },
    components:{Titlebar,myContent},
  }
 
</script>
<style scoped>
  .head img{
    width:100%;
    height:150px;
  }
</style>