import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import CategoryView from '../views/CategoryView.vue'
import ExploreMenu from '../views/ExploreMenu.vue'
import PlatformMenu from '../views/PlatformMenu.vue'
import GameDetailsView from '../views/GameDetailsView.vue'
import GenresPage from '../views/GenresPage.vue'

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
      path: '/platform',
      name: 'platform',
      component: PlatformMenu
    },
    {
      path: '/game-details/:id', 
      name: 'GameDetailsView',
      component: GameDetailsView 
    },
    {
      path: '/genres/:genreId',
      name: 'GenresPage',
      component: GenresPage
    }
    
  ]
})

export default router
