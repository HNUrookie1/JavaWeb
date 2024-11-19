<template>
  <div>
    <!-- <h1>{{ message }}</h1> -->
    <element-view></element-view>
  </div>
</template>

<script>
import ElementView from './views/element/ElementView.vue'
export default {
  components: { ElementView },
  data() {
    return {
      message: 'Hello Vue222'
    }
  },
  methods: {}
}
</script>
<style>
</style>
