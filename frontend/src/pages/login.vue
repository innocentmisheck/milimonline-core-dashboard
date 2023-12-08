<script setup>
import AuthProvider from '@/views/pages/authentication/AuthProvider.vue'
import main_logo from '@images/milimonline/mo-logo.png'

const form = ref({
  email: '',
  amount: '',
  remember: false,
})

const isPasswordVisible = ref(false)


</script>

<template>
  <div class="auth-wrapper d-flex align-center justify-center pa-4">
    <VCard
      class="auth-card pa-4 pt-7"
      max-width="448"
    >
      <VCardItem class="justify-center">
        <template #prepend>
          <div class="d-flex">
            
            <img
              wi
              class="d-flex text-primary"
              :src="main_logo"
              style="width: 45px; height: 45px;"
              alt="Logo Alt Text" 
            />
          </div>
          
        </template>
   
         </VCardItem>

      <VCardText class="pt-2">
        <h5 class="text-h5 mb-1 text-success">
          WELCOME BACK ! 👋🏻
        </h5>
        <p style="font-size: 15px;" class="text-warning" v-if="data">
          {{ data.first_name }} {{ data.last_name }}
        </p>

        <p class="mb-0">
          Please make a simple payment using <span class="text-warning">PayChangu </span> to get suppliers access! 
        </p>
      </VCardText>

      <VCardText>
        <VForm @submit.prevent="$router.push('/dashboard')">
          <VRow>
            <!-- email -->
            <VCol cols="12">
              <VTextField
                v-model="email"
                autofocus
                placeholder="admin.changuharvest@milimonline.com"
                label="Email"
                type="email"
              />
            </VCol>

            <!-- password -->
            <VCol cols="12">
              <VTextField
                v-model="amount"
                label="Amount"
          
              />

              <!-- remember me checkbox -->
              <div class="d-flex align-center justify-space-between flex-wrap mt-1 mb-4">
                <VCheckbox
                  v-model="form.remember"
                  label="Remember me"
                />

                <RouterLink
                  class="text-primary ms-2 mb-1"
                  to="javascript:void(0)"
                >
                  Forgot Password?
                </RouterLink>
                
               
              </div>

              <!-- login button -->
              <VBtn
                @click="fetchData"
                block
                type="submit"
                to="login"
                
              >
                Make Payment
              </VBtn>
            </VCol>

            <!-- create account -->
            <VCol
              cols="12"
              class="text-center text-base"
            >
              <span>New on our platform?</span>
              <RouterLink
                class="text-success ms-2"
                to="/register"
              >
              <br>
                Explore Marketplace
              </RouterLink>
              <br>
              <RouterLink
                  class="text-primary ms-2 mb-1"
                  to="dashboard"
                >
                  Login?
                </RouterLink>
            </VCol>

            <VCol
              cols="12"
              class="d-flex align-center"
            >
              <VDivider />
              <span class="mx-4">or</span>
              <VDivider />
            </VCol>

            <!-- auth providers -->
            <VCol
              cols="12"
              class="text-center"
            >
              <AuthProvider />
            </VCol>
          </VRow>
        </VForm>
      </VCardText>
    </VCard>
  </div>
</template>

<script>
import axios from 'axios';

export default {
      
      data() {
      return {
        data: null,
      };
    },

methods: {
  async fetchData() {
    try {
      const options = {
        method: 'POST',
        url: 'https://api.paychangu.com/payment',
        headers: {
          accept: 'application/json',
          'content-type': 'application/json',
          Authorization: 'Bearer SEC-TEST-BaCdEJNV8OcsY328hl1uxpRfCumSOD69'
        },
        data: {
          amount: this.amount,
          currency: 'MWK',
          email: this.email,
          tx_ref: '' + Math.floor((Math.random() * 1000000000) + 1),
          first_name: 'Innocent',
          last_name: 'Misheck',
          customization: { title: 'Title of payment', description: 'Description of payment' },
          logo: 'https://assets.piedpiper.com/logo.png'
        }
      };

      const response = await axios(options);
      console.log('API response:', response.data);

      // Assuming the hosted link is in response.data.data.checkout_url
      const checkoutUrl = response.data.data.checkout_url;

      // Redirect the browser to the checkout URL
      window.location.href = checkoutUrl;
    } catch (error) {
      console.error(error);
    }
  }
}
};
</script>


<style lang="scss">
@use "@core/scss/template/pages/page-auth.scss";
</style>
