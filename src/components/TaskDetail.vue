<template>
  <div class="grey lighten-4 task">
    <div class="subtitle-1">{{ start_time }}〜{{ end_time }}</div>
    <div class="title">{{ title }}</div>
    <div class="body-2">{{ content }}</div>
  </div>
</template>

<script>
export default {
  name: 'TaskDetail',
  props: ['start_time', 'end_time', 'title', 'content']
}
</script>

<style lang="scss" scoped>
.task {
  margin: 1rem 0;
  padding: 0.5rem;
}
</style>
