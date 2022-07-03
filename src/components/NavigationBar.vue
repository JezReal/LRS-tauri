<script setup lang="ts"></script>

<template>
  <div class="flex flex-col bg-indigo-500 h-screen min-w-1/6 md:w-1/4">
    <div>
      <router-link to="/add">Add book</router-link>
    </div>

    <div>
      <router-link to="/borrow">Borrow/return</router-link>
    </div>

    <div>
      <router-link to="/">view records</router-link>
    </div>

    <div>
      <router-link to="/about">About</router-link>
    </div>
  </div>
</template>
