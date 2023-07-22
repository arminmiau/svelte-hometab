<script lang="ts">
  export let shortcutUrl: string;
  export let shortcutName: string;
  export let iconFileName: string;
</script>

<a href={shortcutUrl}
  ><img alt={iconFileName} class="link-icon" src="/img/{iconFileName}" />
  <p class="link-text">{@html shortcutName}</p></a
>

<style>
  a {
    text-decoration: none;
  }
  img {
    width: 80px;
    height: 80px;
    margin: 0 5px 0 5px;
  }
  p {
    color: #fff;
    text-align: center;
    margin: 0px 5px 0px 5px;
    font-size: 16px;
  }
</style>
