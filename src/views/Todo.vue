<template>
  <v-container>
    <v-expansion-panels>
      <v-expansion-panel
        v-for="item in items"
        :key="item.date"
      >
        <v-expansion-panel-header>
          <p class="headline">{{item.date}}</p>
          <p class="title">{{item.title}}</p>
        </v-expansion-panel-header>
        <v-expansion-panel-content>
          <div class="subtitle-1">{{item.start_time}}〜{{item.end_time}}</div>
          <div class="body-2">{{item.content}}</div>
        </v-expansion-panel-content>
      </v-expansion-panel>
    </v-expansion-panels>
  </v-container>
</template>

<script>
export default {
  name: 'ToDo',
  data: function(){
    return {
      items: [
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
  }
}
</script>
