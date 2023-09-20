import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import CategoryView from '../views/CategoryView.vue'
import GameDetails from '../views/GameDetails.vue'
import ExploreMenu from '../views/ExploreMenu.vue'
import PlatformMenu from '../views/PlatformMenu.vue'
import GameDetailsView from '../views/GameDetailsView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/explore',
      name: '/explore',
      component: ExploreMenu
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
    },
    {
      path: '/platform',
      name: 'platform',
      component: PlatformMenu
    },
    {
      path: '/game-details/:id', // Usamos ":id" para indicar que es un parámetro
      name: 'GameDetailsView',
      component: GameDetailsView // Reemplaza "GameDetailsView" con el nombre real de tu componente
    },
    
  ]
})

export default router
