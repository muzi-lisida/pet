<template>
  <div class="containers">
    <div>
      <div class="carouel ">
        <mt-swipe :auto="4000" class="">
          <mt-swipe-item>
            <img src="../../assets/imgs/1.jpg" alt="">
          </mt-swipe-item>
          <mt-swipe-item>
              <img src="../../assets/imgs/2.jpg" alt="">
          </mt-swipe-item>
          <mt-swipe-item>
              <img src="../../assets/imgs/3.jpg" alt="">
          </mt-swipe-item>
          <mt-swipe-item>
              <img src="../../assets/imgs/4.jpg" alt="">
          </mt-swipe-item>
          <mt-swipe-item>
              <img src="../../assets/imgs/5.jpg" alt="">
          </mt-swipe-item>
        </mt-swipe>   
      </div>
      <div class="modules menus" >
        <ul class="mod">
          <li>
            <router-link v-for="item in desktoAPP" :to="item.router" :key="item.id">
              <img src="../../assets/imgs/6.jpg" alt="">
              <span>{{item.name}}</span>
            </router-link>
          </li>
        </ul>
      </div> 
    </div>
    <div  class="mould_203" style="margin-bottom: 20px; background: rgb(255, 255, 255);">
      <div class="currency_ad">
        <div class="currency-adcon">
          <div class="divboximg flex">
            <div class="divimg" style="width: 50%;">
              <a  class="default_bg">
                <img src="https://img2.epetbar.com/2019-06/19/18/bc446a920f160b4d5519b0291a2254da.jpg?x-oss-process=style/water" class="vux-x-img b-loaded" name="375x420" id="vux-ximg-9x9fo" style="height: 210px;">
              </a>
            </div>
            <div class="divimg" style="width: 50%;">
              <a class="default_bg">
                <img src="https://img2.epetbar.com/2019-06/19/18/c82f384dfa257163ebedfb17af023765.jpg?x-oss-process=style/water" class="vux-x-img b-loaded" name="375x420" id="vux-ximg-zkgd2" style="height: 210px;">
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="brand">
      <p>品牌特卖</p>
      <ul class="sale">
        <li >
          <router-link to="/food">
            <img src="//img2.epetbar.com/nowater/showcase/2019/06/30/001251540.jpg@!water" alt="">
          </router-link>
          <router-link to="/meal">
            <img src="//img2.epetbar.com/nowater/showcase/2019/07/02/093321626.jpg@!water" alt="">
          </router-link>
        </li> 
      </ul>   
    </div>
    <div class="mounld_203" style="margin-bottom: 20px; background: rgb(255, 255, 255);">
      <div class=" currency_ad">
        <div class="currency-adcon">
          <div class="divboximg flex">
            <div class="divimg" style="width: 100%;">
              <a class="default_bg">
                <img src="../../assets/img/huiyuan.jpg" class="vux-x-img b-loaded" style="height: 370.13px;">
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="video">
      <p>潮品视频</p>
      <ul class="video_box">
        <li v-for="(item,i) of lists" :Key="i"  class="container">
          <p class="p1">{{item.lis}}</p>
          <video :src=item.myUrl id="v3" @click="click_me" ></video>  
        </li>
      </ul>
    </div>
  </div> 
</template>

<script>
export default {
  data(){
    return{
      active:"tab1",
      lists:[{id:"1",lis:"奇异玩具",myUrl:require("../../assets/imgs/video1.mp4")},
             {id:"2",lis:"馋嘴零食",myUrl:require("../../assets/imgs/video2.mp4")},
             {id:"3",lis:"潮型必备",myUrl:require("../../assets/imgs/video3.mp4")}],
      desktoAPP:[
        {id:0,name:"美味零食",router:"/snacks"},
        {id:1,name:"狗狗服饰",router:"/costume"},
        {id:2,name:"小萌书",router:"/Main"},
        {id:3,name:"清仓特价",router:"/clear"},
      ]
    }
  },
  props:{
    click_me:{type:Function},
  }
}

</script>

<style scoped>
  .containers{
    position: relative;
  }
  .carouel{
    height:220px;
  }
  .search .login{
    color:15px;
    color:#459d36
  }
  .carouel img{
    width:100%;
    height:220px;
  }
  .brand{
    width:100%;
  }
  ul.mod{
    display:flex;
    justify-content: space-between;
    list-style: none;
  }
  .mod li{
    display:flex;
    padding: 8px 0px;
    justify-content: space-between;
    width: 100%;
  }
  .modules .mod a{
    display: block;
    font-size:12px; 
    width:100px;
  }
  .modules .mod span{
    font-size:12px;
    padding: 5px
  }
  .sale{
    text-align: center;
    width: 100%;
  }
  .sale li{
    width: 100%;
  }
  .sale img{
    height:120px;
    width:100%;
    padding: 5px 0px;
    border-radius: 15px;
  }
  p{
    text-align: left;
    padding-top: 5px;
    padding-bottom: 5px;
  }
  .menus,.mod{
    height: 40px;
    margin-bottom: 20px;
  }
  .mod a{
    display: block;
    display: flex;
    align-items: center;
  }
  .mod a img{
    vertical-align: middle;
  }
  .flex {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
  }
  .divboximg .divimg a{
    display: block;
    overflow: hidden;
  }
  .divboximg .divimg  img{
    border-bottom: 0px;
  }
  .divimg img{
    width: 100%;
    display: block;
  }
  .vux-x-img, .b-lazy {
    -webkit-transition: opacity 500ms ease-in-out;
    transition: opacity 500ms ease-in-out;
    max-width: 100%;
  }
  .video_box{
    color: #333333;
  }
  video{
    height: 160px;
    width: 100%;
  }
</style>