<template>
  <div class="recommend">
    <div class="list_content c333" v-for="(item,i) of myList" :key="i">
      <div class="list_video">
        <div class="top">
          <a class="clearfix">
            <div class="img_video fl" >
              <img :src="item.pic" alt="" lazy="loaded">
            </div>
            <div class="title fl">
              <h3 class="twoLine">{{item.title}}</h3>
              <p class="c999">{{item.subtitle}}</p>
            </div>
          </a>
        </div>
        <div class="bottom">
          <div class="author ">
            <a href="">
              <img class="round50" :src="item.user_img" alt="">
              <span class="ft12">{{item.username}}</span>
            </a>
          </div>
          <div class="collect">
            <img src="../../assets/img/star.png" alt="" width="16px">
            <span class="ft12 c999">{{item.num}}</span>
          </div>
        </div>
      </div>
    </div>
    <mt-button type="default" size="large" @click="loadMore">加载更多</mt-button>
  </div>
</template>

<script>
export default {
  data(){
    return{
      
    }
  },
  props:{
    myList: { required: false, type: Array, default: [] },
    loadMore:{type:Function},
  },
  methods:{
   
  }
}
</script>

<style scoped>
  .list_content{
    width: 92%;
    margin: 0 auto 20px;
    background: rgba(255,255,255,1);
    -webkit-box-shadow: 0px 10px 25px 0px rgba(23,23,23,0.1);
    box-shadow: 0px 10px 25px 0px rgba(23,23,23,0.1);
    border-radius: 10px;
  }
  .c333 {
    color: #333;
  }
  .list_content>.list_video {
    padding: 15px;
  }
  .list_content>div{
    overflow: hidden;
  }
  .list_content div.top {
    width: 100%;
  }
  .list_content div.top>a{
    display: inline-block;
    width: 100%;
    height: 100%;
    display: flex
  }
  .list_content div.top .img_video {
    width: 125px;
    height: 62px;
    position: relative;
  }

  .list_content div.top img {
    width: 100%;
    height: 100%;
    border-radius: 5px;
  }
  .list_content div.top .title{
    width: calc(100% - 125px);
    height: 100%;
    padding-left: 10px;
  }
  .list_content div.top .title>h3 {
    font-size: 14px;
    font-weight: 500;
  }
  .list_content div.top .title>p {
    font-weight: 300;
    font-size: 12px;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
    margin-top: 8px;
  }
  .list_content div.bottom{
    margin-top: 6px;
    overflow: hidden;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .list_content div.bottom .author>a{
    display: inline-block;
    display: flex;
    align-items: center;
  }
  .list_content div.bottom .author img {
    width: 23px;
    height: 23px;
  }
  .round50 {
    border-radius: 50%;
  }
  .ft12 {
    font-size: 12px;
  }
  .list_content div.bottom .collect{
    width: 53px;
    text-align: left;
  }
  .c999 {
    padding-left: 5px;
    color: #999;
  }
</style>
