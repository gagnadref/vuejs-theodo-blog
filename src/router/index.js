import Vue from 'vue'
import Router from 'vue-router'
import Vuex from 'vuex'

import Home from '@/pages/Home'
import Article from '@/pages/Article'

Vue.use(Router)
Vue.use(Vuex)

export default new Router({
  routes: [{
    path: '/',
    name: 'Home',
    component: Home
  }, {
    name: 'page-page',
    path: '/page/:page',
    component: Home,
    props: true
  }, {
    name: 'tag-tag',
    path: '/tag/:tag',
    component: Home,
    props: true
  }, {
    name: 'tag-tag-page-page',
    path: '/tag/:tag/page/:page',
    component: Home,
    props: true
  }, {
    name: 'author-author',
    path: '/author/:author',
    component: Home,
    props: true
  }, {
    name: 'year',
    path: '/:year',
    component: Home,
    props: true
  }, {
    name: 'year-month',
    path: '/:year/:month',
    component: Home,
    props: true
  }, {
    name: 'year-month-slug',
    path: '/:year/:month/:slug',
    component: Article,
    props: true
  }]
})
