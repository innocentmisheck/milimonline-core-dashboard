<template>
  <VBtn
    color="success"
    class="product-upgrade-to-pro"
    href="https://themeselection.com/item/sneat-vuetify-vuejs-admin-template/"
    target="_blank"
    rel="noopener noreferrer"
  >
    Vist MarketPlace

    <VMenu
      open-on-hover
      activator="parent"
      offset="15"
      max-width="400px"
      :close-on-content-click="false"
      transition="slide-y-reverse-transition"
    >
      <VCard>
        <VImg src="https://cdn.jsdelivr.net/gh/themeselection/ts-assets/sneat/sneat-vuetify-vuejs-admin-template/banner/banner.png" />
        <VCardTitle>Milimonline - Marketplace</VCardTitle>
        <VCardText>
          Sneat Admin is the most developer friendly & highly customisable Admin Dashboard Template based on Vuetify.
        </VCardText>
        <VCardText>Click on below button to explore PRO version.</VCardText>
        <VCardText>
          <VBtn
            class="me-4"
            href="https://themeselection.com/item/sneat-vuetify-vuejs-admin-template/?tab=details#details"
            target="_blank"
            rel="noopener noreferrer"
          >
            Visit
          </VBtn>
          <VBtn
            variant="outlined"
            href="https://themeselection.com/item/sneat-vuetify-vuejs-admin-template/"
            target="_blank"
            rel="noopener noreferrer"
          >
            Cancel
          </VBtn>
        </VCardText>
      </VCard>
    </VMenu>
  </VBtn>
</template>

<style lang="scss" scoped>
.product-upgrade-to-pro {
  position: fixed;
  margin-right:-50px;
  // To keep upgrade to pro button on top of v-layout
  z-index: 999;
  inset-block-end: 5%;
  inset-inline-end: 79px;
  opacity: 0.5;

  .v-application &.v-btn.v-btn--elevated {
    box-shadow: 0 1px 5px 1px #FFC300 !important;

    &:hover {
      box-shadow: none !important;
    }
  }
}
</style>
