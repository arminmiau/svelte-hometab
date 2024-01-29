<script lang="ts">
  export let shortcutUrl: string;
  export let shortcutName: string;
  export let iconFileName: string;
  export let p_width = 80;
</script>

<a href={shortcutUrl}>
  <img alt={iconFileName} class="link-icon" src="/img/{iconFileName}" />
  <p style="width: {p_width}px;" class="link-text">
    {@html shortcutName}
  </p>
</a>

<style>
  a {
    text-decoration: none;
  }

  img {
    margin: 0 5px 0 5px;

    height: 80px;
  }

  p {
    margin: 0px 5px 0px 5px;

    color: #fff;
    font-size: 16px;

    text-align: center;
    overflow-wrap: break-word;
  }
</style>
