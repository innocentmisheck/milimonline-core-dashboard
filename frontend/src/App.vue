<script setup>
import { hexToRgb } from '@layouts/utils';
import { useTheme } from 'vuetify';
import UpgradeToProVue from '@/components/UpgradeToPro.vue'




const { global } = useTheme()
</script>

<template>
  <VApp :style="`--v-global-theme-primary: ${hexToRgb(global.current.value.colors.primary)}`">
    <RouterView />
    <UpgradeToProVue/>
  </VApp>
</template>
