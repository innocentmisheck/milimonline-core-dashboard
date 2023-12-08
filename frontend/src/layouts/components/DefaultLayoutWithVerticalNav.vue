<script setup>
import upgradeBannerDark from '@images/pro/upgrade-banner-dark.png';
import upgradeBannerLight from '@images/pro/upgrade-banner-light.png';
import VerticalNavLayout from '@layouts/components/VerticalNavLayout.vue';
import VerticalNavLink from '@layouts/components/VerticalNavLink.vue';
import { useTheme } from 'vuetify';

// Components
import Footer from '@/layouts/components/Footer.vue';
import NavbarThemeSwitcher from '@/layouts/components/NavbarThemeSwitcher.vue';
import UserProfile from '@/layouts/components/UserProfile.vue';

const vuetifyTheme = useTheme()

const upgradeBanner = computed(() => {
  return vuetifyTheme.global.name.value === 'light' ? upgradeBannerLight : upgradeBannerDark
})
</script>

<template>
  <VerticalNavLayout>
    <!-- 👉 navbar -->
    <template #navbar="{ toggleVerticalOverlayNavActive }">
      <div class="d-flex h-100 align-center">
        <!-- 👉 Vertical nav toggle in overlay mode -->
        <IconBtn
          class="ms-n3 d-lg-none"
          @click="toggleVerticalOverlayNavActive(true)"
        >
          <VIcon icon="bx-menu" />
        </IconBtn>

        <div
          class="d-flex align-center cursor-pointer"
          style="user-select: none;"
        >
          

          <span class="d-none d-md-flex align-center text-disabled">
            <span class="me-3">DASHBOARD - ADMINISTRATOR</span>
          </span>
        </div>

        <VSpacer />

       

        <IconBtn class="me-2">
          <VIcon icon="bx-bell" />
        </IconBtn>

        <NavbarThemeSwitcher class="me-2" />

        <UserProfile />
      </div>
    </template>

    <template #vertical-nav-content>
      <VerticalNavLink
        :item="{
          title: 'Dashboard',
          icon: 'bx-home',
          to: '/dashboard',
        }"
      />
      
      <VerticalNavLink
        :item="{
          title: 'Products',
          icon: 'mdi-shopping',
          to: '/products',
        }"
      />
      <VerticalNavLink
        :item="{
          title: 'Customers',
          icon: 'mdi-users',
          to: '/customers',
        }"
      />

      
      <VerticalNavLink
        :item="{
          title: 'Orders',
          icon: 'mdi-shopping-cart',
          to: '/orders',
        }"
      />
      <VerticalNavLink
        :item="{
          title: 'Refund',
          icon: 'mdi-cash-refund',
          to: '/refunds',
        }"
      />
      <VerticalNavLink
        :item="{
          title: 'My Profile',
          icon: 'mdi-account-cog-outline',
          to: '/account-settings',
        }"
      />

      
    </template>


    <!-- 👉 Pages -->
    <slot />

    <!-- 👉 Footer -->
    <template #footer>
      <Footer />
    </template>
  </VerticalNavLayout>
</template>

<style lang="scss" scoped>
.meta-key {
  border: thin solid rgba(var(--v-border-color), var(--v-border-opacity));
  border-radius: 6px;
  block-size: 1.5625rem;
  line-height: 1.3125rem;
  padding-block: 0.125rem;
  padding-inline: 0.25rem;
}
</style>
