<script lang="ts">
  import { page } from '$app/stores';
  import { onMount } from 'svelte';
  $: path = $page.url.pathname;

  let time = new Date();
  setInterval(function () {
    time = new Date();
  }, 100);

  let searchString = '';
  function search() {
    if (searchString === '') return;
    window.location.assign(
      'https://www.duckduckgo.com/?q=' + encodeURIComponent(searchString)
    );
  }

  let searchInput: HTMLInputElement;
  onMount(() => searchInput.focus());
</script>

<div class="inbox">
  <a
    style="border-radius: 0 25% 0 0"
    href="https://mail.google.com/mail/u/0/#inbox"
    class="inbox-link"
    ><img alt="mailAB" src="/img/mailAB.png" class="inbox-icon" /></a
  >
  <a href="https://mail.google.com/mail/u/1/#inbox" class="inbox-link"
    ><img alt="mailAM" src="/img/mailAM.png" class="inbox-icon" /></a
  >
  <a href="https://mail.google.com/mail/u/2/#inbox" class="inbox-link"
    ><img alt="mailCC" src="/img/mailCC.png" class="inbox-icon" /></a
  >
  <a href="https://mail.google.com/mail/u/3/#inbox" class="inbox-link"
    ><img alt="mailA2" src="/img/mailA2.png" class="inbox-icon" /></a
  >
  <a href="https://mail.google.com/mail/u/4/#inbox" class="inbox-link"
    ><img alt="mailA3" src="/img/mailA3.png" class="inbox-icon" /></a
  >
  <a href="https://mail.google.com/mail/u/5/#inbox" class="inbox-link"
    ><img alt="mailCCS" src="/img/mailCCS.png" class="inbox-icon" /></a
  >
  <a
    style="border-radius: 0 0 25% 0"
    href="https://outlook.office.com/mail/inbox"
    class="inbox-link"
    ><img alt="outlookAB" src="/img/outlookAB.png" class="inbox-icon" /></a
  >
</div>
<div class="center">
  <form on:submit={search}>
    <a href="https://duckduckgo.com"
      ><img alt="duckduckgo" src="/img/duckduckgo.svg" class="searchIcon" /></a
    >
    <input
      bind:value={searchString}
      bind:this={searchInput}
      id="search"
      type="text"
      autocomplete="off"
    />
    <input
      alt="searchIcon"
      type="image"
      src="/img/sIcon.png"
      class="searchIcon"
    />
  </form>
</div>
<div class="clockdiv">
  <h1 class="clock">
    {time.getHours().toString().padStart(2, '0') +
      ':' +
      time.getMinutes().toString().padStart(2, '0') +
      ':' +
      time.getSeconds().toString().padStart(2, '0')}
  </h1>
</div>
<nav>
  <a href="/" class={path === '/' ? 'nav-link-active' : ''}> Home </a>
  <a href="/school" class={path === '/school' ? 'nav-link-active' : ''}>
    School
  </a>
  <a href="/dev" class={path === '/dev' ? 'nav-link-active' : ''}> Dev </a>
  <a href="/ayerin" class={path === '/ayerin' ? 'nav-link-active' : ''}>
    Ayerin
  </a>
</nav>

<slot />

<style>
  .center {
    display: flex;
    justify-content: center;
    margin-top: 5%;
    width: 95%;
    margin-right: 5%;
  }
  .inbox {
    position: fixed;
    justify-content: center;
    display: flex;
    flex-direction: column;
    top: 0;
    left: 0;
    height: 100%;
  }
  .inbox-link {
    display: inline-block;
    padding: 10px 10px;
    text-decoration: none;
    color: #eeeeee;
    font-weight: 300;
    height: 32px;
    background: #222222;
  }
  .inbox-link:hover {
    background: rgba(255, 255, 255, 0.05);
  }
  .inbox-icon {
    width: 32px;
    height: 32px;
  }
  a {
    color: #00b7ff;
  }
  h1 {
    font-size: 5em;
  }
  form {
    display: flex;
    background-color: rgba(255, 255, 255, 0.171);
    width: 700px;
    border-radius: 24px;
  }
  form a {
    height: 50px;
  }
  .searchIcon {
    padding: 12.5px;
    width: 25px;
    height: 25px;
  }
  #search {
    margin-left: 0;
    height: 50px;
    width: 600px;
    font-size: 25px;
    background-color: rgba(255, 255, 255, 0.171);
    border: 0;
  }
  #search:focus {
    outline: 1px solid #00ff00;
  }
  .clockdiv {
    margin-top: 40px;
    margin-bottom: 0;
    display: flex;
    justify-content: center;
    width: 95%;
  }
  .clock {
    margin: 0;
  }
  nav {
    width: 95%;
    margin-right: 5%;
    display: flex;
    justify-content: center;
  }
  nav > a {
    margin: 0 20px 0 20px;
    text-decoration: none;
    color: #0f0;
  }
  .nav-link-active {
    font-weight: bold;
    border-bottom: 2px solid #0f0;
  }
</style>
