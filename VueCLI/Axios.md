# Vue CLI プロジェクトに axios をインストールする方法

## 手順

1. `Vue CLI`プロジェクトのディレクトリに移動する。
2. 以下のコマンドを実行する。
   ```
   npm install --save axios vue-axios
   ```
3. `main.js`に以下の 3 行を追加

   ```
   import Vue from 'vue'
   import App from './App.vue'
   import axios from 'axios' // 追加
   import VueAxios from 'vue-axios' // 追加

   Vue.config.productionTip = false

   Vue.use(VueAxios, axios) // 追加

   new Vue({
   render: h => h(App)
   }).$mount('#app')
   ```
