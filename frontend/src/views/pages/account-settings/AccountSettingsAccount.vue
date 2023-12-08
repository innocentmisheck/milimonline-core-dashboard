<script setup>
import avatar1 from '@images/milimonline/download-2.jpeg'
import { ref } from 'vue'
import { toast } from 'https://cdn.jsdelivr.net/npm/vue3-toastify@0.1.13/+esm';

const productName = ref('')
const otherProductDetials = ref('')
const productUnitQuantity = ref('')


const productData = {
  avatarImg: avatar1,
  

}

const refInputEl = ref()
const productDataLocal = ref(structuredClone(productData))
const isAccountDeactivated = ref(false)



const changeAvatar = file => {
  const fileReader = new FileReader()
  const { files } = file.target
  if (files && files.length) {
    fileReader.readAsDataURL(files[0])
    fileReader.onload = () => {
      if (typeof fileReader.result === 'string')
        productDataLocal.value.avatarImg = fileReader.result
    }
  }
}

// reset avatar image
const resetAvatar = () => {
  productDataLocal.value.avatarImg = productData.avatarImg
}

const timezones = [
  '(GMT-11:00) International Date Line West',
  '(GMT-11:00) Midway Island',
  '(GMT-10:00) Hawaii',
  '(GMT-09:00) Alaska',
  '(GMT-08:00) Pacific Time (US & Canada)',
  '(GMT-08:00) Tijuana',
  '(GMT-07:00) Arizona',
  '(GMT-07:00) Chihuahua',
  '(GMT-07:00) La Paz',
  '(GMT-07:00) Mazatlan',
  '(GMT-07:00) Mountain Time (US & Canada)',
  '(GMT-06:00) Central America',
  '(GMT-06:00) Central Time (US & Canada)',
  '(GMT-06:00) Guadalajara',
  '(GMT-06:00) Mexico City',
  '(GMT-06:00) Monterrey',
  '(GMT-06:00) Saskatchewan',
  '(GMT-05:00) Bogota',
  '(GMT-05:00) Eastern Time (US & Canada)',
  '(GMT-05:00) Indiana (East)',
  '(GMT-05:00) Lima',
  '(GMT-05:00) Quito',
  '(GMT-04:00) Atlantic Time (Canada)',
  '(GMT-04:00) Caracas',
  '(GMT-04:00) La Paz',
  '(GMT-04:00) Santiago',
  '(GMT-03:30) Newfoundland',
  '(GMT-03:00) Brasilia',
  '(GMT-03:00) Buenos Aires',
  '(GMT-03:00) Georgetown',
  '(GMT-03:00) Greenland',
  '(GMT-02:00) Mid-Atlantic',
  '(GMT-01:00) Azores',
  '(GMT-01:00) Cape Verde Is.',
  '(GMT+00:00) Casablanca',
  '(GMT+00:00) Dublin',
  '(GMT+00:00) Edinburgh',
  '(GMT+00:00) Lisbon',
  '(GMT+00:00) London',
]

const currencies = [
  'USD',
  'EUR',
  'GBP',
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'CZK',
  'DKK',
  'HKD',
  'HUF',
  'INR',
]
</script>

<template >
  <VRow v-if="data">
    <VCol cols="12">
      <VCard > 
        <VCardText
        >
        <p>Product ID: {{ $route.params.id }}</p>
        </VCardText>
        <VCardText class="d-flex">
          <!-- 👉 Avatar -->
          <VAvatar
            rounded="lg"
            size="100"
            class="me-6"
            :image="productDataLocal.avatarImg"
          />

         

          <!-- 👉 Upload Photo -->
          <form class="d-flex flex-column justify-center gap-5">
            <div class="d-flex flex-wrap gap-2">
              <VBtn
                color="primary"
                @click="refInputEl?.click()"
              >
                <VIcon
                  icon="bx-cloud-upload"
                  class="d-sm-none"
                />
                <span class="d-none d-sm-block">Upload new photo</span>
              </VBtn>

              <input
                ref="refInputEl"
                type="file"
                name="file"
                accept=".jpeg,.png,.jpg,GIF"
                hidden
                @input="changeAvatar"
              >

              <VBtn
                type="reset"
                color="error"
                variant="tonal"
                @click="resetAvatar"
              >
                <span class="d-none d-sm-block">Reset</span>
                <VIcon
                  icon="bx-refresh"
                  class="d-sm-none"
                />
              </VBtn>
            </div>

            <p class="text-body-1 mb-0">
              Allowed JPG, GIF or PNG. Max size of 800K
            </p>
          </form>
        </VCardText>

        <!-- 👇 Product Info -->
        <div class="d-flex">
          <VCardText>
            <h5 class="text-primary">Recent Updates</h5>

          <VDivider></VDivider>
          <br>
            <p v-if="productName">
              <strong>Name:</strong> {{ productName }}
            </p>
            <p v-if="!productName">
              <strong>Name:</strong> {{ data.product_name }} 
            </p>
            <p><strong>Category:</strong> {{ data.product_category_description}}</p>

            <p v-if="otherProductDetials">
              <strong>Description:</strong> {{ otherProductDetials }}
            </p>
            <p v-if="!otherProductDetials">
              <strong>Description:</strong> {{ data.other_product_detials }} 
            </p>
            <p v-if="productUnitQuantity">
              <strong>Stock:</strong> {{ productUnitQuantity }} 
            </p>
            <p v-if="!productUnitQuantity">
              <strong>Stock:</strong> {{ data.product_unit_quantity }} {{ data.quantity_symbol }}
            </p>

          </VCardText>
        </div>

        <VDivider />

        <VCardText>
          <!-- 👉 Form -->
          <VForm class="mt-6">
            <VRow>
              <!-- 👉 First Name -->
              <VCol
                md="6"
                cols="12"
              >
                <VTextField
                  v-model="product_name"
                  placeholder="Banana"
                  label="Name"
                />
              </VCol>

              <!-- 👉 Last Name -->
              <VCol md="6" cols="12">
                <VTextField
                  v-model="product_category_description"
                  placeholder="Fruits"
                  label="Category (Readonly)"
                  readonly
                />
              </VCol>


              <!-- 👉 Stock -->
              <VCol
                cols="12"
                md="6"
              >
                <VTextField
                  v-model="product_unit_quantity"
                  label="Stock"
                  placeholder="600"
                />
              </VCol>

                <!-- 👉 selectedQuantitySymbol -->
                  <VCol cols="12" md="6">
                    <VTextField
                      v-model="quantity_symbol"
                      label="Quantity in (KG, MT, BOXS, PIECES, LTRS, PALLETS, CRATES, BUSHELS)"
                      placeholder="Select stock quantity"
                    ></VTextField>
                  </VCol>

              <!-- 👉 Description -->
              <VCol cols="12" >
                <VTextarea
                  v-model="other_product_detials"
                  label="Description"
                  placeholder="The banana, a tropical delight, boasts a vibrant yellow peel that conceals a soft, creamy interior. Its flavor is a harmonious blend of sweetness with a subtle hint of tanginess. Easily portable and naturally packaged, the banana is a convenient snack, providing a quick energy boost. Packed with potassium and other essential nutrients, this curved wonder is not just delicious but also a nutritious addition to your daily diet."
                />
              </VCol>


                <!-- 👉 Form Actions -->
              <VCol
                cols="12"
                class="d-flex flex-wrap gap-4"
              >
                <VBtn
                
                @click="updateProduct"
                >Save changes</VBtn>

                <VBtn
                  class="danger-button"
                  to="/products"
                >
                  Cancel
                </VBtn>

              </VCol>
            </VRow>
          </VForm>
        </VCardText>
      </VCard>
    </VCol>

    <VCol cols="12">
      <!-- 👉 Deactivate Account -->
      <VCard title="Delete Product">
        <VCardText>
          <div>
            <VCheckbox
              v-model="isAccountDeactivated"
              label="I confirm about deleting this product"
            />
          </div>

          <VBtn
            :disabled="!isAccountDeactivated"
            color="error"
            class="mt-3"
          >
            Delete Product
          </VBtn>
        </VCardText>
      </VCard>
    </VCol>
  </VRow>
</template>



<script>
import axios from "axios";

export default {
  data() {
    return {
      data: null,
      product_name:"",
      product_category_description:"",
      product_unit_quantity:"",
      other_product_detials:"",
      quantity_symbol:"", 
      selectedQuantitySymbol:null
    };
  },
  created() {
    this.fetchData();
  },
  mounted(){
    this.notify();
  },

  
  methods: {
    notify() {
          toast.success(`Product ${this.$route.params.id} viewed successfully`, {
            position: 'top-right',
            duration:50000,
            style: {
              fontWeight: '500',
            },
          });
       },
        notifyUpdated() {
              toast.success(`Product ${this.$route.params.id} updated successfully`, {
                position: 'top-right',
                duration:50000,
                style: {
                  fontWeight: '500',
                },
              });
        }, 
    



    async fetchData() {
      try {
        const response = await axios.get(`http://localhost:3000/product/${this.$route.params.id}`);
        this.data = response.data;
        console.log("API response:", this.data);
      } catch (error) {
        console.error("Error fetching data:", error);
      }
    },

    async updateProduct() {
      try {
        await axios.put(`http://localhost:3000/product/${this.$route.params.id}`,
          {
            product_name: this.product_name,
            product_unit_quantity : this.product_unit_quantity,
            other_product_detials : this.other_product_detials
          });

          (
          this.product_name = "",
          this.product_category_description ="",
          this.product_unit_quantity = "",
          this.other_product_detials = ""
          )

        this.$router.push("/products");

      } catch (err) {
        console.log(err);
      }
    },
  },
};
</script>

<style scoped>
.danger-button {
  background-color: #dc3545 !important; /* Red color, you can adjust this to your preference */
  color: #fff !important; /* Text color, often white for readability on a red background */
  border: 1px solid #dc3545 !important; /* Border color, matches the background color */
  padding: 10px 15px; 
  border-radius: 5px; 
  cursor: pointer; 
}

.danger-button:hover {
  background-color: #c82333; 
  border-color: #bd2130; 
}

</style>





