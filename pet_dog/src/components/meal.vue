<template>
  <div class="app">
    <Titlebar title="开饭乐专场" :back="myBack"></Titlebar>
    <div class="header">
      <img src="//img2.epetbar.com/nowater/showcase/2019/07/02/093321626.jpg@!water" alt="">
    </div>
    <myContent :list="list"></myContent>
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
      var url="http://127.0.0.1:3000/meal?id=5"
      this.axios.get(url).then(res=>{
      this.list=res.data
        // console.log(this.list)
      })
    },
    myBack(){
      this.$router.push("/")
    }
  },
  components:{Titlebar,myContent},
}
</script>
<style scoped>
   .header img{
    width:100%;
    height:140px;
  }
</style>