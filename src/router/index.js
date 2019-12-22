import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'todo',
    component: () => import('../views/Todo.vue')
  },
  {
    path: '/link',
    name: 'link',
    component: () => import('../views/TaskLink.vue')
  },
  {
    path: '/note',
    name: 'note',
    component: () => import('../views/Note.vue')
  }
]

const router = new VueRouter({
  routes
})

export default router
