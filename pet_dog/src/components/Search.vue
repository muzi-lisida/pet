<template>
  <div class="search">
    <TitleBar title="搜索" :click="myClick" :back="myBack"></TitleBar>
    <div class="search_box w92 overflow">
      <div class="input_box fl">
        <a  class="search_img" @click="search">
          <img src="../assets/img/serach.png" > 
        </a>
        <input  id="search" type="search" placeholder="请输入搜索内容" autofocus="autofocus">
      </div>
      <a class="fr goSearch">取消</a>
    </div>
    <div  class="recently_search_box w92">
      <div class="recently_search overflow">
        <h3 class="fl">最近搜索</h3> 
        <div  class="clear_history fr ft10 c999">
          <img  src="../assets/img/waste.png">
          <span>清空历史</span>
        </div>   
      </div>
    </div>
  </div>
</template>

<script>
import TitleBar from './common/Titlebar.vue'
export default {
  data(){
    return{

    }
  },
  methods:{
    myBack(){
      this.$router.go("-1"); 
    },
    myClick(){
      
    },
    search(){
     var sea=document.getElementById("sea");
     var inner=sea.value;
      if(inner=="美味零食"){
        this.$router.push("/snacks")
      }else if(inner=="狗狗服饰"){
        this.$router.push("/costume")
      }else if(inner=="小萌书"){
        this.$router.push("/Main")
      }else if(inner=="清仓特价"){
        this.$router.push("/clear")
      }else if(inner=="醇粹主粮"){
        this.$router.push("/food");
      }else if(inner=="开饭乐专场"){
        this.$router.push("/meal");
      }else{
        this.$router.push("/")
      }
    }
  },
  components:{TitleBar}
}
</script>

<style scoped>
  .search{
    width: 100%;
  }
  .search .w92{
    width: 92%;
    margin: 0 auto;
    margin-top: 7px;
  }
  .overflow {
    overflow: hidden!important;
  }
  .search .search_box .input_box {
    width: 88%;
    height: 30px;
    position: relative;
  }
  .fl,.w92,.recently_search,.ft10 {
    display: flex;
    flex-flow: row nowrap;
    justify-content: space-between;
  }
  .search .search_box .input_box .search_img{
    display: inline-block;
    position: absolute;
    left: 0;
    bottom: 0;
    width: 38px;
    height: 100%;
    text-align: center;
    line-height: 30px;
    background-size: 100% 100%;
  }
  a {
    color: #333;
  }
  .search .search_box .input_box .search_img>img {
    width: 14px;
    height: 15px;
    vertical-align: middle;
    position: relative;
    bottom: 1px;
  }
  .search .search_box .input_box input {
    width: 100%;
    height: 30px;
    border: none;
    outline: none;
    padding: 0 10px 0 35px;
    background: rgba(240,240,240,1);
    border-radius: 30px;
    -webkit-user-select: text;
    -moz-user-select: text;
    -ms-user-select: text;
    user-select: text;
  }
  .search .search_box .goSearch{
    display: inline-block;
    width: 30px;
    height: 30px;
    line-height: 30px;
    text-align: center;
    font-size: 12px;
  }
  .search .w92{
    width: 92%;
    margin: 0 auto;
  }
  .search .recently_search{
    margin-top: 20px;
    width: 100%;

  }
  .search h3{
    font-weight: bold;
    padding-bottom: 20px;
    font-size: 14px;
  }
  .clear_history img{
    width: 10px;
    height: 11px;
    
  }
  .c999 {
    color: #999;
  }
  .ft10 {
    width: 60px; 
    height: 15px;
    font-size: 12px;
    align-items: center;
  }
  span{
    margin: 0;
  }
</style>



