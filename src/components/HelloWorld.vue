<template>
  <div>
    <h1 :style="{ color: textColor }" @click="changeColor">
      HelloWorld
    </h1>
  </div>
</template>

<script>
export default {
  data() {
    return {
      textColor: "black", // 初期色
    };
  },
  methods: {
    changeColor() {
      // ランダムな色を生成
      this.textColor = `#${Math.floor(Math.random() * 16777215).toString(16)}`;
    },
  },
};
</script>

<style scoped>
h1 {
  cursor: pointer;
  text-align: center;
  margin-top: 20%;
}
</style>
