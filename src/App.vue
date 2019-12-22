<template>
  <v-app>
    <v-app-bar
      app
      color="primary"
      dark
    >
      <div class="d-flex align-center">
        <v-img
          alt="Vuetify Logo"
          class="shrink mr-2"
          contain
          src="https://cdn.vuetifyjs.com/images/logos/vuetify-logo-dark.png"
          transition="scale-transition"
          width="40"
        />

        <v-img
          alt="Vuetify Name"
          class="shrink mt-1 hidden-sm-and-down"
          contain
          min-width="100"
          src="https://cdn.vuetifyjs.com/images/logos/vuetify-name-dark.png"
          width="100"
        />
      </div>

      <v-spacer></v-spacer>

      <v-btn
        href="https://github.com/vuetifyjs/vuetify/releases/latest"
        target="_blank"
        text
      >
        <span class="mr-2">Latest Release</span>
        <v-icon></v-icon>
      </v-btn>
    </v-app-bar>
    <v-content>
      <router-view></router-view>
    </v-content>
    <v-footer>
      <v-bottom-navigation
        fixed
        v-model="current_page"
        style="align-items: center;"
      >
        <!-- ToDo -->
        <router-link to="/">
          <v-btn
            value="toDo"
          >
            <span>ToDo</span>
            <v-icon>{{ todo_icon }}</v-icon>
          </v-btn>
        </router-link>
        <!-- Task Link -->
        <router-link to="/link">
          <v-btn
            value="taskLink"
          >
            <span>Task Link</span>
            <v-icon>{{ link_icon }}</v-icon>
          </v-btn>
        </router-link>
        <!-- Note -->
        <router-link to="/note">
          <v-btn
            value="note"
          >
            <span>Note</span>
            <v-icon>{{ note_icon }}</v-icon>
          </v-btn>
        </router-link>
      </v-bottom-navigation>
    </v-footer>
  </v-app>
</template>

<script>
import { mdiClipboardListOutline, mdiPencilPlusOutline, mdiVectorLink } from '@mdi/js'

export default {
  name: 'App',

  data() {
    return {
      current_page: "",
      todo_icon: mdiClipboardListOutline,
      link_icon: mdiVectorLink,
      note_icon: mdiPencilPlusOutline
    }
  },
};
</script>
