<template>
  <v-container>
    <v-select :items="date_list" v-model="current_date" label="日付"></v-select>
    <v-container>
      <div
        v-for="(task, index) in task_order.tasks"
        :key="index"
        class="text-center"
      >
        <TaskDetail
          :start_time="task.start_time"
          :end_time="task.end_time"
          :title="task.title"
        ></TaskDetail>
        <v-icon>{{ arrow_icon }}</v-icon>
      </div>
      <p class="text-center mt-8">
        <v-btn outlined color="primary">追加</v-btn>
      </p>
    </v-container>
  </v-container>
</template>

<script>
import TaskDetail from '@/components/TaskDetail.vue'
import { mdiChevronDown } from '@mdi/js'

export default {
  name: 'TaskLink',
  data() {
    return {
      arrow_icon: mdiChevronDown,
      current_date: '2020-01-01',
      date_list: [
        '2020-01-01',
        '2020-01-02',
        '2020-01-03',
        '2020-01-04',
        '2020-01-05'
      ],
      task_order: {
        date: '2020-01-01',
        tasks: [
          {
            start_time: '13:00',
            end_time: '14:00',
            title: '初詣',
          },
          {
            start_time: '17:00',
            end_time: '21:00',
            title: '格付けチェックみる',
          },
          {
            start_time: '17:00',
            end_time: '21:00',
            title: '格付けチェックみる',
          },
          {
            start_time: '17:00',
            end_time: '21:00',
            title: '格付けチェックみる',
          },
          {
            start_time: '17:00',
            end_time: '21:00',
            title: '格付けチェックみる',
          },
          {
            start_time: '17:00',
            end_time: '21:00',
            title: '格付けチェックみる',
          },
          {
            start_time: '17:00',
            end_time: '21:00',
            title: '格付けチェックみる',
          }
        ]
      }
    }
  },
  components: { TaskDetail }
}
</script>
