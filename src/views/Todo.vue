<template>
  <v-container>
    <TaskItem v-for="(task, index) in todo_items" :key="index" :item="task"></TaskItem>
  </v-container>
</template>

<script>
import TaskItem from '@/components/TaskItem.vue'

export default {
  name: 'ToDo',
  data: function(){
    return {
      todo_items: [
        {
          'date': '2019/12/04',
          'start_time': '19:00',
          'end_time': '21:00',
          'title': '神戸rbに参加する',
          'content': '後の飲み会で一発ギャグをする'
        },
        {
          'date': '2019/12/07',
          'start_time': '14:00',
          'end_time': '17:00',
          'title': 'Ruby関西に参加する',
          'content': 'いっぱい学ぶ'
        },
        {
          'date': '2019/12/07',
          'start_time': '19:00',
          'end_time': '21:00',
          'title': 'ノリスのクリスマスパーティー',
          'content': 'プレゼントをもらう'
        }
      ]
    }
  },
  components: { TaskItem }
}
</script>
