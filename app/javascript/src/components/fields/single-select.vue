<template>
  <div class="field">
    <label v-if="label" :for="inputId" class="label">{{ label }}</label>
    <div class="control">
      <v-select
        :options="options"
        :maxHeight="maxHeight"
        :disabled="disabled"
        @search="onSearch"
        label="name"
        :inputId="inputId"
        v-bind:value="value"
        v-on:input="$emit('input', $event)"
      ></v-select>
    </div>
  </div>
</template>

<script>
import vSelect from 'vue-select';

export default {
  name: 'single-select',
  components: {
    vSelect
  },
  props: {
    label: {
      type: String,
      required: false
    },
    value: {
      type: Object,
      required: false
    },
    // Replace this with a CSS change when vue-select 3.0.0 comes out.
    // https://github.com/sagalbot/vue-select/pull/759
    maxHeight: {
      type: String,
      required: false,
      default: '400px'
    },
    disabled: {
      type: Boolean,
      required: false,
      default: false
    },
    searchPathIdentifier: {
      type: String,
      required: true
    }
  },
  data: function() {
    return {
      options: [],
      searchPath: `${window.location.origin}/${this.searchPathIdentifier}/search.json`,
    }
  },
  methods: {
    /*
     * @param {search}  String   Current search text
     * @param {loading} Function Toggle loading class
     */
    onSearch: _.debounce(function(search, loading) {
      loading(true);
      let searchUrl = new URL(this.searchPath);
      searchUrl.searchParams.append('query', search);
      // TODO: Add error handling.
      fetch(searchUrl, {
        headers: {
          "Content-Type": "application/json"
        }
      }).then((response) => {
          return response.json();
        })
        .then((items) => {
          this.options = items;
          loading(false);
        });
    }, 250)
  },
  computed: {
    inputId() {
      return _.snakeCase(this.label);
    }
  }
}
</script>
