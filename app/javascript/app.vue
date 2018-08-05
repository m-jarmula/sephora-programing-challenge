<template>
  <div id='app'>
    <h1 class='text-center'>{{ message }}</h1>
    <div class='container-fluid'>
      <div class='row' v-for='i in Math.ceil(products.length / productsPerRow)'>
        <div class='col-sm' v-for='product in products.slice((i - 1) * productsPerRow, i * productsPerRow)'>
          <span>{{ product.name }}</span>
          <div class='text-center'>
            <img src='http://via.placeholder.com/500x500' class='img-fluid'>
          </div>
          <span>S${{ product.price / 100 }}</span>
          <div>Sold out: {{ product.sold_out }}</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      message: 'Happy Shop',
      productsPerRow: 3,
      products: null
    }
  },

  mounted () {
    axios
      .get('/api/v1/products')
      .then(response => {
        this.products = response.data
      })
      .catch(error => {
        console.log(error)
        this.errored = true
      })
      .finally(() => this.loading = false)
  }
}
</script>

<style scoped>
</style>
