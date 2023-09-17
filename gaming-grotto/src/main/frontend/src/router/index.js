import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import CategoryView from '../views/CategoryView.vue'
import GameDetails from '../views/GameDetails.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path:'/category',
      name: 'category',
      component: CategoryView
    },
    {
      path: "/api/games/:id",
      name: "GameDetails",
      component: GameDetails
    }
    
  ]
})

export default router
