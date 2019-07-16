<template>
    <div class="app">  
      <div>
        <mt-tab-container v-model="active">  
          <mt-tab-container-item id="tab1"> 
            <myHeader></myHeader> 
             <container :click_me="click_me"></container>
          </mt-tab-container-item>  
          <mt-tab-container-item id="tab2">  
            <Main></Main>
          </mt-tab-container-item>  
          <mt-tab-container-item id="tab3">  
            <Cart ></Cart>
          </mt-tab-container-item> 
            <mt-tab-container-item id="tab4">  
              <Me></Me>
          </mt-tab-container-item>  
        </mt-tab-container>   
      </div>
      <div class="mt_bar">
        <mt-tabbar v-model="active" fixed>
          <mt-tab-item id="tab1">
              <img slot="icon" src="../assets/imgs/1-1.png"> 
            <!-- <span slot="icon" class="mNavIco1"></span> -->
            精选
          </mt-tab-item>
          <mt-tab-item id="tab2">
            <img slot="icon" src="../assets/imgs/1-2.png"> 
            小萌书
          </mt-tab-item>
          <mt-tab-item id="tab3">
            <img slot="icon" src="../assets/imgs/1-3.png"> 
            购物车
          </mt-tab-item>
          <mt-tab-item id="tab4">
            <img slot="icon" src="../assets/imgs/1-4.png">
            我的
          </mt-tab-item>
        </mt-tabbar>
      </div>
    </div>    
</template>
<script>
  import myHeader from "./common/Header.vue"
  import container from "./common/container.vue"
  import Main from "./common/Main.vue"
  import Cart from "./common/Cart.vue"
  import Me from "./common/Me.vue"
  export default {
    data(){
      return{
        active:"tab1"
      }
    },
    methods:{
      click_me(e){
        e.target.play()
      }
    },
    components:{myHeader,container,Main,Cart,Me},
  }
</script>

<style scoped>
  .mNavIco1[data-v-a687ef2e] {
    background-position: 0px -58px;
  }
  .mNavIco1[data-v-a687ef2e] {
    background-position: 0px -2px;
  }
  .mNavIco1, .mNavIco2, .mNavIco3, .mNavIco4, .mNavIco5 {
    display: block;
    margin: auto;
    width: 45px;
    height: 45px;
    background: url(../assets/img/newnavIco.119b6e66.png) 0 0 no-repeat;
    background-size: 385px auto;
  }
  .mt_bar{
    height:55px;
  }
  
</style>
