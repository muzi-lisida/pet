<template>
 <div class="app-container">
    <router-view></router-view>
 </div>
</template>

<style>
 .lname{
    width:120px;
    font-size:25px;
    font-weight:700;
    font-style: italic;
    color:#459d36;
  }
  a{
   text-decoration: none;
    color: #333;
  }
  *{margin:0;padding:0;}
  .app-container{
     padding-top:0px;
     padding-bottom:0px;
     overflow-x:hidden;
     /* height:0; */
   }

   .mui-bar-tab .mui-tab-item-tao.mui-active {
      color: #007aff;
   }
   .mui-bar-tab .mui-tab-item-tao {
      display: table-cell;
      overflow: hidden;
      width: 1%;
      height: 50px;
      text-align: center;
      vertical-align: middle;
      white-space: nowrap;
      text-overflow: ellipsis;
      color: #929292;
   }
   .mui-bar-tab .mui-tab-item-tao .mui-icon {
      top: 3px;
      width: 24px;
      height: 24px;
      padding-top: 0;
      padding-bottom: 0;
   }

   .mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
      font-size:11px;
      display:block;
      overflow:hidden;
      text-overflow:ellipsis;

   }
   a img {
      border: 0;
   }
   .fr {
      float: right;
   }
   .fl{
      float: left;
   }
   .clearfix:after {
      content: ".";
      display: block;
      height: 0;
      clear: both;
      visibility: hidden;
   }
</style>
