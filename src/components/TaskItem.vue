<template>
  <v-expansion-panels>
    <v-expansion-panel>
      <v-expansion-panel-header>
        <p class="headline">{{item.date}}</p>
      </v-expansion-panel-header>
      <v-expansion-panel-content>
        <TaskDetail
           v-for="(task, index) in item.tasks" v-bind:key="index"
          :start_time="task.start_time"
          :end_time="task.end_time"
          :title="task.title"
          :content="task.content"
        ></TaskDetail>
      </v-expansion-panel-content>
    </v-expansion-panel>
  </v-expansion-panels>
</template>

<script>
import TaskDetail from '@/components/TaskDetail.vue'

export default {
  name: 'TaskItem',
  props: ['item'],
  components: { TaskDetail }
}
</script>
