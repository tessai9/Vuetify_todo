<template>
  <v-expansion-panels>
    <v-expansion-panel>
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
</template>

<script>
export default {
  name: 'TaskItem',
  props: ['item']
}
</script>
