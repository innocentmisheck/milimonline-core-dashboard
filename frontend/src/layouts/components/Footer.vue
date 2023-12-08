<template>
  <div class="h-100 d-flex flex-wrap align-center justify-space-between">
    <!-- 👉 Footer: left content -->
    <span style="font-size:12px;" class="d-flex align-center">
      &copy;
      {{ new Date().getFullYear() }}
      COPYRIGHT RESERVED -
      <a
        href="https://www.linkedin.com/company/mazikofintechmw/?originalSubdomain=mw"
        target="_blank"
        rel="noopener noreferrer"
        style="font-size:12px;" class="text-warning ms-1"
      >MILIMONLINE LTD</a>
    </span>
    
    <!-- 👉 Footer: right content -->
    <span class="d-md-flex gap-x-4 text-primary d-none">
      <!-- <a
        href="https://themeselection.com/license/"
        target="noopener noreferrer"
      >License</a>
      <a
        href="https://themeselection.com/"
        target="noopener noreferrer"
      >More Themes</a> -->
      <a
        style="font-size:15px;"
        href="https://demos.themeselection.com/sneat-vuetify-vuejs-admin-template/documentation/"
        target="noopener noreferrer"
      >Documentation</a>
    </span>
  </div>
</template>
