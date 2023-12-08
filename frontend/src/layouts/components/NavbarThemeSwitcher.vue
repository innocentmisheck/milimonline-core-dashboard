<script setup>
const themes = [
  {
    name: 'light',
    icon: 'bx-sun',
  }
 
]
</script>

<template>
  <ThemeSwitcher :themes="themes" />
</template>
