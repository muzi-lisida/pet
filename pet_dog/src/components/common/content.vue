<template>
  <div class="foods">
    <div class="food_list">
      <p class="tit">{{title}}</p>
      <div class="styles" v-for="(item,i) of list" :key="i">
        <div class="meat">
          <img :src="item.pic" alt />
          <p class="title">{{item.title}}</p>
          <p class="price">
            <span class="p1">￥{{item.price1}}</span>
            <span class="p2">￥{{item.price2}}</span>
          </p>
          <p class="now">
            <span>已售{{item.sale}}袋</span>
            <span>{{item.interact}}人互动</span>
          </p>
          <mt-button size="small"  :data-toggle="item.lid" @click="goto">查看详情</mt-button>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import { Toast } from "mint-ui";
export default {
  data() {
    return {};
  },
  props: {
    title: { required: false, type: String, default: "" },
    list: { required: false, type: Array, default: [] }
  },
  methods: {
    /* 通过e可以来获取商品的lid */
    goto(e) {
      var lid = e.target.dataset.toggle;
      this.$router.push({ path: "../details", query: { lid: lid } });
    }
  }
};
</script>
<style scoped>
    .tit {
    color: #459d36;
    margin-bottom: 12px;
    }
    .foods img {
    width: 150px;
    height: 130px;
    }
    .title {
    color: #000;
    font-size: 14px;
    height: 42px;
    text-overflow: -o-ellipsis-lastline;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    }
    .styles {
    display: flex;
    }
    .p1 {
    color: #999;
    text-decoration: line-through;
    }
    .p2 {
    color: #f60;
    }
    .now {
    color: #999;
    font-size: 12px;
    }
    .meat {
    width: 163px;
    height: 100px;
    margin-left: 15px;
    margin-top: -5px;
    }
    span {
    margin-left: 6px;
    }
    .food_list {
    clear: both;
    }
    .styles {
    float: left;
    height: 270px;
    }
    p {
    margin-top: 0;
    margin-bottom: 0;
    }
    button {
    margin-left: 22px;
    margin-top: 2px;
    }
</style>