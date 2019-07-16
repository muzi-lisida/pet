import Vue from 'vue'
import Router from 'vue-router'
import Main from './components/common/Main.vue'
import Cart from './components/common/Cart.vue'
// import Me from './components/Me.vue'
// import Collect from './components/common/Collect.vue'
import Search from './components/Search.vue'

import Index from "./components/index.vue"
import Login from "./components/login.vue"
import Reg from "./components/reg.vue"
import Snacks from "./components/snacks.vue"
import Costume from "./components/costume.vue"
import Clear from "./components/clear.vue"
import Food from "./components/food.vue"
import Meal from "./components/meal.vue"
import Details from "./components/details.vue"
import Own from "./components/own.vue"

Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",component:Index},
    {path:"/login",component:Login},
    {path:"/reg",component:Reg},
    {path:"/snacks",component:Snacks},
    {path:"/costume",component:Costume},
    {path:"/clear",component:Clear},
    {path:"/food",component:Food},
    {path:"/meal",component:Meal},
    {path:"/details",component:Details},
    {path:'/Main',component:Main},
    {path:'/Cart',component:Cart},
    // {path:'/Me',component:Me},
    {path:'/Search',component:Search},
    {path:"/own",component:Own}
  ]
})
