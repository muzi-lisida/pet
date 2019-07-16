import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'

import MintUI from 'mint-ui'
import'mint-ui/lib/style.css'
Vue.use(MintUI);


Vue.config.productionTip = false
//设置跨域请求保存session
axios.defaults.withCredentials=true;
//设置请求服务器基础路径
axios.defaults.baseURL="http://127.0.0.1:3000/"

Vue.prototype.axios=axios;
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
