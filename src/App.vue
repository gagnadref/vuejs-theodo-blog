<template>
  <div id="app">
    <blog-header />
    <router-view :key="$route.fullPath"></router-view>
  </div>
</template>

<script>
import BlogHeader from '@/components/BlogHeader.vue'

export default {
  name: 'app',
  components: {
    BlogHeader
  }
}
</script>

<style>
</style>
