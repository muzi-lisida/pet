<template>
  <div class="main">
    <div class="headerBox">
      <div  class="header border-b">
        <div class="headerText textover ft18">{{title}}</div> 
        <div class="left-back" @click="back"></div> 
        <div class="right-more"></div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data(){
    return {
    
    }
  },
  props:{
    title:{default:""},
    back:{type:Function}, 
  },
  methods:{
   
  }
}
</script>

<style scoped>
  body{margin: 0;padding: 0;}
  .main{
    width: 100%;
  }
  .header{
    width: 100%;
    height: 50px;
    background: #fff;
    line-height: 50px;
    color: #333;
    position: relative;
  }
 .headerText{
    text-align: center;
    margin: 0 65px;
  }
  .textover {
      overflow: hidden;
      white-space: nowrap;
      word-wrap: normal;
      text-overflow: ellipsis;
  }
  .ft18 {
      font-size: 18px;
  }
  .left-back {
    width: 35px;
    height: 35px;
    background: url(../../../public/img/topIco.bc556dcf.png) 0 0 no-repeat;
    background-size: 35px auto;
    position: absolute;
    left: 5px;
    top: 7px;
    background-position: 0 0;
  }
  .right-more{
    width: 35px;
    height: 35px;
    background: url(../../../public/img/topIco.bc556dcf.png) 0 0 no-repeat;
    background-size: 35px auto;
    position: absolute;
    right: 5px;
    top: 7px;
    background-position: 0 -70px;
  }
  .border-b:after {
    bottom: 0;
  }

  .border-b:after, .border-t:before {
    content: "";
    display: block;
    position: absolute;
    left: 0;
    right: 0;
    height: 1px;
    -webkit-transform-origin: 0 0;
    transform-origin: 0 0;
    -webkit-transform: scaleY(.5);
    transform: scaleY(.5);
    background-color: #e5e5e5;
  }
  .menuBox-nav{
    height:65px;
    background-color: #fff;
  } 
  .flex{
    display: flex;
  }
  .menuBox-nav a {
    font-size: 14px;
    color: #666;
    text-align: center;
    padding-top: 11px;
  }
  .it1, .it2 {
    display: block;
  }
  it1 {
    -webkit-box-flex: 1;
    -ms-flex: 1;
    flex: 1;
  }
</style>
