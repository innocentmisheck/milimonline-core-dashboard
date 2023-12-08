<script>
import axios from "axios"
import { toast } from 'https://cdn.jsdelivr.net/npm/vue3-toastify@0.1.13/+esm';



export default {
  data() {
      return {
          productList: [],
          queryFilter:null,
          productFilterList:[]
      }
  },
 
  mounted() {
    this.getProduct();
  },

 
 
  computed: {
  currentProductList() {
    return this.queryFilter ? this.productFilterList : this.productList;
  }
},

methods: {
    notify() {
          toast.success(`Product updated successfully`, {
            position: 'top-right',
            duration:50000,
            style: {
              fontWeight: '500',
            },
          });
      },
    async getProduct() {
        try {
            const response = await axios.get("http://localhost:3000/product")
            this.productList = response.data; // Fix the typo here
            console.log("Product data:", this.productList);
        } catch (err) {
            console.log(err);
        }
    },

   async filterProducts() {
    try {
      // Simulate a delay of 3 seconds (3000 milliseconds)
      await new Promise((resolve) => setTimeout(resolve, 3000));

      // Fetch filtered product data from the server
      const response = await axios.get(`http://localhost:3000/filterProduct/${this.queryFilter}`);

      // Update the productFilterList with the fetched data
      this.productFilterList = response.data;
      
      // Log the filtered product data to the console
      console.log("Filtered Product data:", this.productFilterList);

      // Show a toast message if no matching products are found
      if (this.productFilterList.length === 0) {
        this.alert('No matching products found.');
      }
    } catch (error) {
      // Log any errors that occur during the fetch operation
      console.error(error);
    }
  },
    async searchClicked() {
      // Add your search functionality here
      console.log('Search clicked');
    },
    
    viewProduct(productId) {
    // Use a router push to navigate to the detailed view component
    this.$router.push({ name: 'product-details', params: { id: productId } });
  }
}

}


</script>

<template>
 
  
  <br>
  <form @submit.prevent="filterProducts">
      <input type="search" v-model="queryFilter"  placeholder="What you're looking for, filter products here..."/>
    <VBtn
    variant="outlined"
    type="submit"
    icon
    style="color:#2FCE32 !important; margin:5px;"
    @click="searchClicked"

  >
      <v-icon>mdi-magnify</v-icon> 
  </VBtn>
  </form>
<div>
  <VTable
  style="max-height: 80vh; overflow-y: auto;"
  fixed-header
  v-show="!queryFilter"
>
  <thead >
    <tr>
      <th class="text-uppercase">
        Product ID
      </th>
      <th>
        Product Name
      </th>
      <th>
        Category
      </th>
      <th>
        Stock
      </th>
      <th>
        Actions
      </th>
    </tr>
  </thead>

  <tbody>
    <tr
       v-for="product in productList" :key="product.product_id"
       
    >
      <td>
        {{ product.product_id }}
      </td>
      <td class="text-center">
        {{ product.product_name }}
      </td>
      <td class="text-center">
        {{ product.product_category_description }}
      </td>
      <td class="text-center">
        {{ product.product_unit_quantity }}
      </td>
      <td class="text-center">
        <!-- View button with icon -->
        <VBtn
          icon
          variant="outlined"
          @click="viewProduct(product.product_id)"
          style="background-color: #FFC300; color: white !important; margin: 5px;"
        >
          <VIcon>mdi-folder-open</VIcon>
        </VBtn>
      </td>
      
      
    </tr>
  </tbody>
</VTable>
</div>


  <Suspense @pending="pending" @fallback="fallback" @resolve="resolved">
    <template #default>
      <div>
        <VTable
      height="295px"
      fixed-header
      v-show="queryFilter"
    
    >
      <thead >
        <tr>
          <th class="text-uppercase">
            Product ID
          </th>
          <th>
            Product Name
          </th>
          <th>
            Category
          </th>
          <th>
            Stock
          </th>
          <th>
            Actions
          </th>
        </tr>
      </thead>
    
      <tbody>
        <tr
           v-for="product in productFilterList" :key="product.product_id"
           
        >
          <td>
            {{ product.product_id }}
          </td>
          <td class="text-center">
            {{ product.product_name }}
          </td>
          <td class="text-center">
            {{ product.product_category_description }}
          </td>
          <td class="text-center">
            {{ product.product_unit_quantity }}
          </td>
          <td class="text-center">
            <!-- View button with icon -->
            <VBtn
              icon
              variant="outlined"
              @click="viewProduct(product.product_id)"
              style="background-color: #FFC300; color: white !important; margin: 5px;"
            >
              <VIcon>mdi-folder-open</VIcon>
            </VBtn>
          
            <!-- Delete button with icon -->
            <VBtn
              icon
              variant="outlined"
              style="background-color: #FF5733; color: white !important; margin: 5px;"
            >
              <VIcon>mdi-delete</VIcon>
            </VBtn>
          </td>
          
          
        </tr>
      </tbody>
    </VTable>
    </div>
    </template>
  <template #fallback>
  <h1>Loading</h1>
  </template>

  </Suspense>
</template>
<style scoped>
/* Apply these styles to your input element */
input {
  padding: 8px;
  font-size: 14px;
  border: 1px solid #ccc;
  margin-bottom: 5px;
  border-radius: 4px;
  width: 310px; /* Adjust the width as needed */
  margin-left: 15px; 
}

/* Optional: Add styles for focus state */
input:focus {
  outline: none;
  border-color: #2FCE32; /* Change the color to your preference */
  box-shadow: 0 0 5px #8b9b8b; /* Change the shadow as needed */

}

</style>

<script setup> 



const pending = () =>{
  console.log("pending")
}
const fallback = () =>{
  console.log("fallback")

}
const resolved = () =>{
  console.log("resolved")

}
</script>