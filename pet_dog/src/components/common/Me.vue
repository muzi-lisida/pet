<template>
  <div class="me">
    <TitleBar title="我的爱宠" :back='myback'></TitleBar>
    <!-- <img src="../../assets/img/backgroundV420.jpg" alt=""> -->
    <div class="top_img rela" >
      <div class="userinfo">
        <div class="clearfix operation pt15 ftc">
          <div class="fl ml5">
            <a href="" class="db">
              <img src="../../assets/me/shezhe.png" alt="">
            </a>
          </div>
          <div class="fr mr5 dib rela">
            <a href="" class="db">
              <img src="../../assets/img/yun2.png" alt="">
            </a>
          </div>
        </div>
        <div class="clearfix pl10 pr10 user_info">
          <div class="userphoto fl">
            <a href="" class="db">
              <img src="../../assets/me/user_img.png" alt="">
            </a>
          </div>
          <div class="username">
            <div class="cfff ft16"></div>
            <div class="grade nologin mt15">
              <div id="box" class="cfff pr5">
                <router-link to="/login" >
                <span >登录</span>
                </router-link>
              </div>
              <span class="cfff pr5">|</span>
              <div id="bo" class="cfff pr5">
                <router-link to="/reg" id="ids">
                  <span>注册</span>
                </router-link>
                <span @click="logout" id="sps">注销</span>
              </div>
            </div>
          </div>
        </div>
        <div class="vip pl10 pr10">
          <div class="vipcon pt5 pb5 pr20 clearfix">
            <div  class="fl" style="width: 25%;" v-for="item of List" :key="item.id">
              <a  @click="mode_login" class="db ftc">
                <div  class="liimg rela ml20">
                  <img :src="item.imgUrl"> 
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div  class="mymould_20" style="margin-bottom: 40px;"></div>
    <div class="mymould_22" style="margin-bottom:25px">
      <div class="pl10 pr10">
        <div class="myorder">
          <div class="clearfix title pt10 pl10 pr10">
            <div  class="fl">
              <a @click="mode_login">
                <img src="../../assets/me/dingdan.png">
              </a>
            </div>
            <div  class="fr">
              <a   @click="mode_login">
                <img  src="">
              </a>
            </div>
          </div>
          <div class="clearfix mt20 pb10 dtwo">
            <div class="fl" style="width:19.9%" v-for="item of myList" :key="item.id" id="dd">
              <a  @click="mode_login" class="db ftc orederli">
                <div class="liimg rela">
                  <img :src="item.imgUrl" alt="" lazy="loaded">
                </div>
                <div class="ft12 ftc ell mt5">
                  {{item.title}}
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="mymould_23" style="margin-bottom: 25px;">
      <div class="pl10">
        <div class="wallet pad10">
          <div class="clearfix title">
            <div class="fl">
              <a @click="mode_login">
                <img src="../../assets/me/qianbao.png" alt="">
              </a>
            </div>
            <div  class="fr">
              <a  @click="mode_login">
                <img  src="">
              </a>
            </div>
          </div>
          <div class="clearfix mt20">
            <div  class="fl" style="width: 25%;"  v-for="item of arr" :key="item.id">
              <a @click="mode_login" class="db ftc pl5 pr5">
                <div  class="liimg rela"><!----> 
                  <span  class="bold ft14 cf0">{{item.num}}</span> 
                </div> 
                <div class="ft12 ftc ell mt5">{{item.title}}</div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="mymould_25" style="margin-bottom: 25px;">
      <div class="pl10 pr10">
        <div class="myservice pad10">
          <div class="clearfix title">
            <div class="fl">
              <a @click="mode_login">
                <img src="../../assets/me/fuwu.png" alt="">
              </a>
            </div>
            <div class="fr">
              <a @click="mode_login">
                <img src="" alt="">
              </a>
            </div>
          </div>
          <div class="clearfix mt20">
            <div  class="fl mb10 mt10" style="width: 25%;" v-for="item of myImg" :key="item.id">
              <a  @click="mode_login" class="db ftc pl5 pr5">
                <div data-v-924e1302="" class="liimg rela">
                  <img :src="item.imgUrl" lazy="loaded"> 
                </div> 
                <div  class="ft12 ftc ell mt5">{{item.title}}</div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import TitleBar from './Titlebar.vue'
import {MessageBox} from "mint-ui"
export default {
  data(){
    return{
      List:[
        {id:'1',imgUrl:require("../../assets/me/zero.png")},
        {id:'2',imgUrl:require("../../assets/me/zero2.png")},
        {id:'3',imgUrl:require("../../assets/me/yiliao.png")},
        {id:'4',imgUrl:require("../../assets/me/vip.png")},
      ],
      myList:[
        {id:'1',title:"代付款", imgUrl:require("../../assets/me/pay.png")},
        {id:'2',title:"待收货", imgUrl:require("../../assets/me/car.png")},
        {id:'3',title:"待评价", imgUrl:require("../../assets/me/pingjia.png")},
        {id:'4',title:"自主售后", imgUrl:require("../../assets/me/shouhou.png")},
        {id:'5',title:"国际订单", imgUrl:require("../../assets/me/earth.png")},
      ],
      arr:[
        {id:'1',num:'0',title:"优惠券"},
        {id:'2',num:'0',title:"E宠币"},
        {id:'3',num:'0.00',title:"余额"},
        {id:'4',num:'0.00',title:"红包"},
      ],
       myImg:[
        {id:'1',title:"联系客服", imgUrl:require("../../assets/me/phone.png")},
        {id:'2',title:"潮品预售", imgUrl:require("../../assets/me/yushou.png")},
        {id:'3',title:"我的团购", imgUrl:require("../../assets/me/tuangou.png")},
        {id:'4',title:"我的收藏", imgUrl:require("../../assets/me/shoucang.png")},
        {id:'5',title:"随手送礼", imgUrl:require("../../assets/me/lipin.png")},
        {id:'6',title:"我的兑换", imgUrl:require("../../assets/me/duihuan.png")},
        {id:'7',title:"我的关注", imgUrl:require("../../assets/me/guanzhu.png")},
        {id:'8',title:"萌爪联盟", imgUrl:require("../../assets/me/mengzhua.png")},
        {id:'9',title:"我的捐赠", imgUrl:require("../../assets/me/juanzeng.png")},
        {id:'10',title:"我的预售", imgUrl:require("../../assets/me/meshou.png")},
      ],
    }
  },
  mounted(){
    this.load()
  },
  methods:{
    myback(){

    },
    mode_login(){
      var uname=sessionStorage.getItem("uname");
      if(uname){
      } else{
         MessageBox.confirm("您还未登录，请先登录")
      }
    },
    load(){
      var uname=sessionStorage.getItem("uname");
      if(uname){
        var box=document.getElementById("box");
        var html=`${uname}`
        box.innerHTML=html
        $("#ids").css('display','none')
      }else{
        $("#sps").css('display','none')
      }
    },
    logout(){
      sessionStorage.removeItem("uname");
      sessionStorage.removeItem("uid");
      this.shuxin()
    },
    shuxin(){
      this.$router.go(0)
    }
  },
  components:{TitleBar}
}
</script>

<style scoped>
  #box,#bo{
    display: inline;
  }
  .top_img{
    background-color: #f4f4f4;
    background-image: url("../../assets/img/backgroundV420.jpg");
    height: 206px;
  }
  .userinfo{
    height: 206px;
  }
  .rela {
    position: relative;
  }
  .pt15 {
    padding-top: 15px;
  } 
  .clearfix {
    *zoom: 1;
  }
  .ml5 {
    margin-left: 5px;
  }
  .db {
    display: block;
  }
  .operation img {
    width: 50%;
  }
  .dib {
    display: inline-block;
  }
  .mr5 {
    margin-right: 5px;
  }
  .user_info{
    margin: 31px 0;
  }
  .pl, .pl10 {
    padding-left: 10px;
  }
  .pr, .pr10 {
    padding-right: 10px;
  }
  .userphoto {
    width: 70px;
    height: 70px;
    border-radius: 50%;
    overflow: hidden;
  }
  .userphoto img{
    width: 70px;
    height: 70px;
  }
  .userinfo .username {
    margin-left: 80px;
    padding-top: 8px;
  }
  .cfff ,.cfff>a{
    color: #fff !important;
  }
  .ft16 {
    font-size: 16px;
  }
  .mt15 {
    margin-top: 15px;
  }
  .pr5{
    padding-right: 5px;
  }
  .vipcon{
    background: #252525;
    border-radius: 15px 15px 0px 0px;
  }
  .pb5 {
    padding-bottom: 5px;
  }
  .pr20 {
    padding-right: 20px;
  }
  .pt5 {
    padding-top: 5px;
  }
  .ftc {
    text-align: center;
  }
  .ml20 {
    margin-left: 20px;
  }
  .vipcon .liimg img{
    width: 100%;
  }
  .myorder{
    -webkit-box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.1);
    box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.1);
    border-radius: 15px;
  }
  .pt10 {
    padding-top: 10px;
  }
  .myorder .title img{
    height: 16px;
  }
  .pb10 {
    padding-bottom: 10px;
  }
  .mt20 {
    margin-top: 20px;
  }
  .myorder .orederli{
    padding: 0 8px;
  }

  .myorder .liimg img{
    width: 45%;
  }
   .ell {
    overflow: hidden;
  }
  .ell {
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .ft12 {
    font-size: 12px;
  }
  .mt5 {
    margin-top: 5px;
  }
  .dtwo{
    box-sizing: border-box;
  }
  .dtwo #dd:last-child{
    border-left: 1px solid #e7e7e7;
  }
  .wallet{
    -webkit-box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.1);
    box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.1);
    border-radius: 15px;
  }
  .pad10 {
    padding: 10px;
  }
  .wallet .title img{
    height: 16px;
  }
  .pl5 {
    padding-left: 5px;
  }
  .pr5 {
    padding-right: 5px;
  }
  .cf0 {
    color: #ff5757;
  }
  .ft14 {
    font-size: 14px;
  }
  .bold {
    font-weight: 700;
  }
  .myservice{
    -webkit-box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.1);
    box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.1);
    border-radius: 15px;
  }
  .myservice .title img{
    height: 16px;
  }
  .mb, .mb10 {
    margin-bottom: 10px;
  }
  .mt, .mt10 {
    margin-top: 10px;
  }
  .myservice .liimg img{
    width: 35%;
  }
</style>
