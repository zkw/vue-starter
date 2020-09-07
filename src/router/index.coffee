import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

routes = [
  {
    path: '/'
    name: 'Home'
    component: -> import('../views/Home.vue')
  }
  {
    path: '/about'
    name: 'About'
    component: -> import('../views/About.vue')
  }
]

router = new VueRouter(
  mode: 'history'
  base: process.env.BASE_URL
  routes: routes
)

export default router
