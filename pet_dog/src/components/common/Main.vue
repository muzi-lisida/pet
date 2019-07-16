<template>
  <div class="main" id="main">
    <TitleBar title="小萌书"  :back="myBack"></TitleBar>
    <div class="opgc_header">
      <div class="fixed_box">
        <div class="fixed_header" id="to">
          <div class="header_min c333">
            <div class="top">
              <div class="pets_type">
                <img src="../../assets/img/load.png" alt="" class="pet_position">
                <span class="ft14">狗狗</span>
                <img src="../../assets/img/download.png" alt="">
              </div>
              <div class="search_max">
                <router-link to="/Search" class="search c666">
                  <img src="../../assets/img/serach.png"> 
                  <span >请输入搜索内容</span>
                </router-link>
              </div>
              <router-link to="" class="news fr">
                <img  src="../../assets/img/yun.png">
              </router-link >
            </div>
            <!-- 导航选项卡 -->
            <div>
              <mt-navbar class="page-part" v-model="selected">  
                <mt-tab-item id="opt1">收藏</mt-tab-item>  
                <mt-tab-item id="opt2">推荐</mt-tab-item>  
                <mt-tab-item id="opt3">达人测评</mt-tab-item>  
                <mt-tab-item id="opt4">养宠视频</mt-tab-item>  
              </mt-navbar>  
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container_top">
      <mt-tab-container v-model="selected">  
        <mt-tab-container-item id="opt1">  
          <Collect :jump="myJump"></Collect>
        </mt-tab-container-item>  
        <mt-tab-container-item id="opt2">
          <div class="link flex">
            <div v-for="item of List" :key="item.id">
              <a >
                <img :src="item.imgUrl"  class="imgh">
              </a>
            </div>
          </div>
          <Recommend :myList="myList" :loadMore="loadMore"></Recommend>
        </mt-tab-container-item>  
        <mt-tab-container-item id="opt3">  
          <Assess :aList="aList" :load="load"></Assess>
        </mt-tab-container-item>
        <mt-tab-container-item id="opt4">  
          
        </mt-tab-container-item>   
      </mt-tab-container>  
    </div>
  </div>
</template>

<script>
import TitleBar from './Titlebar.vue'
import Collect from './Collect.vue'
import Recommend from './recommend.vue'
import Assess from './assess.vue'

export default {
  data(){
    return {
      selected:'opt2',
      List:[
        {id:'1',imgUrl:require("../../assets/img/eat.png")},
        {id:'2',imgUrl:require("../../assets/img/diseasePet.png")},
        {id:'3',imgUrl:require("../../assets/img/moreTool.png")},
        {id:'4',imgUrl:require("../../assets/img/protectPet.png")},
        {id:'5',imgUrl:require("../../assets/img/knowledgeBase.png")}
      ],
      myList:[],
      aList:[],
      pno:0,
      pageSize:6,
      pno1:0,
      pageSize1:6,
    }
  },
   mounted(){
      this.loadMore();
      this.load();
      this.top();
  },
  methods:{
    loadMore(){
      this.pno++;
      //2.创建url 请求地址
      var url="http://127.0.0.1:3000/rcmd";
      //3.创建参数对象
      var obj={pno:this.pno,pageSize:this.pageSize}
      //4.发送ajax
      this.axios.get(url,{params:obj}).then(result=>{
        //5.接收服务器返回数据
        //6.保存list
        var rows = this.myList.concat(result.data);
        this.myList=rows;
        // console.log(this.myList)
      })
    },
    myBack(){
      this.$router.go(""); 
    },
    myJump(){
      this.$router.push("/Login");
    },
    load(){
     this.pno1++;
      //2.创建url 请求地址
      var url="http://127.0.0.1:3000/ase";
      //3.创建参数对象
      var obj={pno1:this.pno1,pageSize1:this.pageSize1}
      //4.发送ajax
      this.axios.get(url,{params:obj}).then(result=>{
        // console.log(result);
        //5.接收服务器返回数据
        //6.保存list
        // this.list=result.data.data;
        var rows = this.aList.concat(result.data);
        this.aList=rows;
        // console.log(this.aList)
      })
    },
    top(){
      $(window).scroll(function () {
			if ($(window).scrollTop() >= 50) {
				$("#to").addClass("fixed");
				$("#main").addClass("rela");
			} else {
				$("#to").removeClass("fixed");
				$("#main").removeClass("rela");
			}
			}).trigger("scroll");
    }
   
  },
  components:{TitleBar,Collect,Recommend,Assess}
}
</script>

<style scoped>
  .rela{
    position: relative;
  }
  .opgc_header .fixed {
    position: fixed;
    top: 0;
    z-index: 888;
  }
  img {
    vertical-align: middle;
  }
  .opgc_header{
    width: 100%;
    background: #fff;
    font-family: SourceHanSansCN-Medium;
  }
  .opgc_header>div.fixed_box {
    width: 100%;
    height: 75.5px;
  }
  .opgc_header .fixed_header{
    width: 100%;
    background: #fff;
    border-bottom: 1px solid #F3F4F5;
  }
  .opgc_header .header_min{
    width: 92%;
    margin: 0 auto;
  }
  .c333 {
    color: #333;
  }
  .opgc_header .top{
    overflow: hidden;
    width: 100%;
    height: 30px;
    margin-bottom: 10px;
    margin-top: 10px;
    display: flex;
    flex-flow: row nowrap;
    justify-content: space-between;
    align-items: center;
  }
  .pets_type{
    height: 25px;
    width: 57px;
    display: flex;
    flex-flow: row nowrap;
    justify-content: space-between;
    align-items: center;
  }
  .opgc_header .pets_type .pet_position {
    width: 13px;
    height: 16px;
    position: relative;
    bottom: 1px;
  }
  .ft14 {
    font-size: 14px;
  }
  .opgc_header .pets_type img{
    width:6px;
    height:4px;
  }
  .opgc_header .search_max{
    width: calc(100% - 82px);
    text-align: center;
  }
  .opgc_header .search {
    display: inline-block;
    width: calc(100% - 50px);
    height: 30px;
    background: rgba(240,240,240,1);
    opacity: 0.8;
    border-radius: 30px;
    line-height: 30px;
    padding: 0 15px;
    text-align: left;
    text-decoration:none
  }
  .opgc_header .search>img{
    width: 14px;
    position: relative;
    bottom: 1px;
  }
  .opgc_header .search>span {
    font-size: 11px;
    font-weight: 300;
    margin-left: 6px;
    font-family: MicrosoftYaHeiLight;
    color: #666666;
  }
  .opgc_header .news{
    width: 24px;
    height: 22px;
    margin-top: 3px;
  }
  .opgc_header .news>img{
    width: 100%;
    vertical-align: top;
  }
  .link {
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
  }
  .flex {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
  }
  .link>div,.link .imgh{
    width: 75px;
    height: 97px;
  }
  .container_top{
    margin-top: 14px;
  }
</style>
