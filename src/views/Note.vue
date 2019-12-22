<template>
  <v-container>
    <div>
      <!-- 入力欄 -->
      <div :class="{inactive: !input_mode}">
        <v-textarea
          v-model="input_text"
          label="Note"
          filled
          auto-grow
          clearable
          rows="3"
        ></v-textarea>
        <div class="text-right">
          <v-btn primary class="cyan" @click="addToList">追加</v-btn>
        </div>
      </div>
      <!-- テキストエリアの表示トグル -->
      <div class="text-center">
        <v-icon
          v-model="add_note"
          @click="switchInputNote"
          class="blue--text text--accent-4"
        >
          {{ add_note }}
        </v-icon>
      </div>
      <!-- ノートリスト -->
      <v-container>
        <NoteItem
          v-for="(note, index) in note_list"
          :key="index"
          :item="note"
          :class="{'mt-3': index > 0}"
        />
      </v-container>
    </div>
  </v-container>
</template>
<script>
  import { mdiPlusCircle, mdiCloseCircle } from '@mdi/js';
  import NoteItem from '@/components/NoteItem.vue';

  export default {
    name: 'Note',
    data() {
      return {
        input_mode: false,
        add_note: mdiPlusCircle,
        note_list: [
          "メモメモメモ・・・",
          "メモメモメモ・・・",
          "メモメモメモ・・・",
          "メモメモメモ・・・",
          "メモメモメモ・・・",
          "メモメモメモ・・・",
          "メモメモメモ・・・",
          "メモメモメモ・・・",
        ],
        input_text: ""
      }
    },
    components: { NoteItem },
    methods: {
      switchInputNote(){
        this.input_mode = !this.input_mode
        this.add_note = this.input_mode ? mdiCloseCircle : mdiPlusCircle
      },
      addToList() {
        this.note_list.unshift(this.input_text)
        this.switchInputNote()
      }
    }
  }
</script>
<style scoped>
  .inactive {
    display: none;
  }
</style>
