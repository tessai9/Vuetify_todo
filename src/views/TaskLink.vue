<template>
  <v-container>
    <v-select :items="date_list" v-model="current_date" label="日付"></v-select>
  </v-container>
</template>

<script>
export default {
  name: 'TaskLink',
  data() {
    return {
      current_date: '2020-01-01',
      date_list: [
        '2020-01-01',
        '2020-01-02',
        '2020-01-03',
        '2020-01-04',
        '2020-01-05'
      ]
    }
  }
}
</script>
