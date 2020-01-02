<template>
  <v-container>
    <TaskItem
      v-for="(task, index) in todo_items"
      :key="index"
      :item="task"
      :class="{'mt-3': index > 0}"
    ></TaskItem>
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
          'date': '2020/01/01',
          'tasks': [
            {
              'start_time': '13:00',
              'end_time': '14:00',
              'title': '初詣',
              'content': 'おみくじと参拝'
            },
            {
              'start_time': '17:00',
              'end_time': '21:00',
              'title': '格付けチェックみる',
              'content': 'Gacktを見届ける'
            }
          ]
        },
        {
          'date': '2020/01/02',
          'tasks':[
            {
              'start_time': '14:00',
              'end_time': '17:00',
              'title': '旧PCのフォーマット',
              'content': ''
            },
            {
              'start_time': '19:00',
              'end_time': '21:00',
              'title': 'Vuetifyの勉強',
              'content': 'ToDoアプリの開発'
            }
          ]
        }
      ]
    }
  },
  components: { TaskItem }
}
</script>
