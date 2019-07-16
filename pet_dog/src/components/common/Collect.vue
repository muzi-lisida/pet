<template>
  <div class="collect">
    <div  class="nothing">
      <div class="bitmap-nocontent bitmap ct"></div> 
      <p class="ftc ft15 c666 mt15">暂无内容</p> 
      <p class="ft12 ftc cB7">小主，登录后才可查看哦～</p> 
      <div class="go_login ft14 cdb" @click="jump">立即登录</div>
    </div>
  </div>
</template>

<script>
export default {
  data(){
    return{

    }
  },
  props:{
    jump:{type:Function}
  }
}
</script>

<style scoped>
  .collect{
    position: relative;
    width: 100%;
    height: 370px;
    top: 20%;
  }
  .bitmap {
    background: url("../../assets/img/bitmap404.5c8694aa.png") 0 0 no-repeat;
    background-size: 200px auto;
    height: 180px;
    width: 200px;
    background-position: 0 -812px;
  }
  .ct {
    margin: auto;
  }
  .c666 {
    color: #666;
  }
  .ft15 {
    font-size: 15px;
  }
  .mt15 {
    margin-top: 15px;
  }
  .ftc {
    text-align: center;
  }
  .cB7{
    color: #B7B7B7;
  }
  .ft12 {
    font-size: 12px;
  }
  .ftc {
    text-align: center;
  }
  .nothing>div.go_login{
    width: 101px;
    height: 35px;
    border: 1px solid #41c856;
    line-height: 35px;
    color: #41c856;
    text-align: center;
    border-radius: 20px;
    margin: 15px auto;
  }
  .ft14 {
    font-size: 14px;
  }
</style>
