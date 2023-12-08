<script setup>
import { default as illustrationJohnDark, default as illustrationJohnLight } from '@images/milimonline/progress-1.png';
import { useTheme } from 'vuetify';

const { global } = useTheme()
const illustrationJohn = computed(() => global.name.value === 'dark' ? illustrationJohnDark : illustrationJohnLight)

const suppliers = [
  {
    supplier_name: 'Nthimba Harvests',
    supplier_description: 'Based in Kalonga, Welros aggregates produce from local farmers and cooperatives. They are a supplier and processor of Kilombero Rice, Honey and many more.',
    
  }
]

</script>





<template>
  <VCard v-if="data" class="text-center text-sm-start">
    <VRow no-gutters>
      <VCol
        cols="12"
        sm="8"
        order="2"
        order-sm="1"
      >
        <VCardItem>
         
          <VCardTitle class="text-md-h5 text-success">
            Welcome  {{ data[0].supplier_name }}  
          </VCardTitle>

        </VCardItem>

        <VCardText>
          <span >
            {{ data[0].supplier_description }}  
          </span>
          <br>
          <br>
               
          <VBtn
            variant="tonal"
            class="mt-4"
            size="small"
            to="/products"
          >
            View Orders
          </VBtn>
        </VCardText>
      </VCol>

      <VCol
        cols="12"
        sm="4"
        order="1"
        order-sm="2"
        class="text-center"
      >
        <img
          :src="illustrationJohn"
          :height="$vuetify.display.xs ? '150' : '175'"
          :class="$vuetify.display.xs ? 'mt-6 mb-n2' : 'position-absolute'"
          class="john-illustration flip-in-rtl"
        >
      </VCol>
    </VRow>
  </VCard>
</template>

<style lang="scss" scoped>
.john-illustration {
  inset-block-end: -0.0625rem;
  inset-inline-end: 3rem;
}
</style>

<script>
import axios from "axios";

export default {
  data() {
    return {
      data: null,
    };
  },
  mounted() {
    this.fetchData();
  },
  methods: {
    async fetchData() {
      try {
        const response = await axios.get("http://localhost:3000/supplier");
        this.data = response.data;
        console.log("API response:", this.data);
      } catch (error) {
        console.error("Error fetching data:", error);
      }
    },
  },
};
</script>

