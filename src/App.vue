<script setup lang="ts">
import NavigationBar from "./components/NavigationBar.vue";
</script>

<template>
  <div class="flex flex-row">
    <NavigationBar class="relative" />
    <router-view></router-view>
  </div>
</template>

<style></style>
