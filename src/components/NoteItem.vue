<template>
  <div>
    <v-card
    >
      <v-container>
        <v-card-text>
          {{ item }}
        </v-card-text>
        <v-card-actions>
          <v-btn
            text
            small
            color="cyan"
          >
            開く
          </v-btn>
        </v-card-actions>
      </v-container>
    </v-card>
  </div>
</template>
<script>
export default {
  name: 'NoteItem',
  props: ['item']
}
</script>
