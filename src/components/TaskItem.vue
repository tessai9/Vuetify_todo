<template>
  <v-expansion-panels>
    <v-expansion-panel>
      <v-expansion-panel-header>
        <p class="headline">{{item.date}}</p>
      </v-expansion-panel-header>
      <v-expansion-panel-content>
        <div class="grey lighten-4 task" v-for="(task, index) in item.tasks" v-bind:key="index">
          <div class="subtitle-1">{{task.start_time}}〜{{task.end_time}}</div>
          <div class="title">{{task.title}}</div>
          <div class="body-2">{{task.content}}</div>
        </div>
      </v-expansion-panel-content>
    </v-expansion-panel>
  </v-expansion-panels>
</template>

<script>
export default {
  name: 'TaskItem',
  props: ['item']
}
</script>

<style lang="scss">
.task {
  margin: 1rem 0;
  padding: 0.5rem;
}
</style>
