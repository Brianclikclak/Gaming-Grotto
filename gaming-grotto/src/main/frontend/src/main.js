import { createApp } from 'vue'
import { createPinia } from 'pinia'
import { createVuetify } from 'vuetify/lib/framework'


import App from './App.vue'
import router from './router'

const app = createApp(App)
const vuetify = createVuetify({
    // Opciones de configuración de Vuetify aquí
  })

app.use(createPinia())
app.use(router)
app.use(vuetify)

app.mount('#app')
