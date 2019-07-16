<template>
    <div class="searchs">
      <!-- <router-link to="/" class="login">WOWO宠</router-link>
      <input type="text" placeholder="请输入搜索内容">
      <button class="btn">搜索</button>
      <router-link to="/reg">注册</router-link>
      <router-link to="/login">登录</router-link> -->
      <div class="top">
        <div class="search_max">
          <router-link to="/Search" class="search c666">
            <img src="../../assets/img/serach.png"> 
            <span >请输入搜索内容</span>
          </router-link>
        </div>
        <router-link to="" class="news fr">
          <img  src="../../assets/img/yun2.png">
        </router-link >
      </div>
    </div>
</template>
<script>

</script>
<style scoped>
  /* .search{
    width: 100%;
  }
  .search input{
    border-radius:25px;
    margin-left:18px;

    height:25px;
    outline:0;
  }
  .search .btn{
    background-color:#459d36;
    border:0;
    height:25px;
    border-radius:5px;
    margin-left:-2px;
    margin-right:12px;
  }
  .search a{
    margin-left:5px;
  }
  a{
    text-decoration:none;
    font-size:12px; 
  }
  .login{
    color:#459d36;
    font-size:14px;
    font-weight:700;
    font-style: italic;
    color:#459d36;
  } */
  .searchs{
    background: transparent;
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 10;
    max-width: 750px;
    left: 0;
    right: 0;
    margin: 0 auto;
  }
  .top{
    overflow: hidden;
    width: 100%;
    height: 30px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    margin-top: 10px;
    padding-left: 15px;
    padding-right: 15px;
  }
  .search_max {
    width: calc(100% - 50px);
    text-align: center;
  }
  .search {
    display: inline-block;
    width: calc(100% - 50px);
    height: 30px;
    background: rgba(240,240,240,1);

    border-radius: 30px;
    line-height: 30px;
    padding: 0 15px;
    text-align: left;
    text-decoration: none;
    background: rgba(255,255,255,0.8);
  }
  .search>img{
    width: 10px;
    position: relative;
    bottom: 1px;
  }
  .search>span{
    font-size: 11px;
    font-weight: 300;
    margin-left: 6px;
    font-family: MicrosoftYaHeiLight;
    color: #666666;
  }
  .news {
    width: 24px;
    height: 22px;
    margin-top: 3px;
    
  }
  .news>img{
    width: 100%;
    vertical-align: top;
    color:#fff;
  }
</style>