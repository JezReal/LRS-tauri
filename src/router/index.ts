import { createRouter, createWebHistory } from 'vue-router'
import RecordsView from '../views/RecordsView.vue'
import AddBookView from '../views/AddBookView.vue'
import BorrowReturnView from '../views/BorrowReturnView.vue'
import AboutView from '../views/AboutView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/', component: RecordsView
    },
    {
      path: '/add', component: AddBookView
    },
    {
      path: '/borrow', component: BorrowReturnView
    },
    {
      path: '/about', component: AboutView
    }
  ]
})

export default router
