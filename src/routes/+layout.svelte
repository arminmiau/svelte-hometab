<script lang="ts">
  import { page } from '$app/stores';
  import { onMount } from 'svelte';
  import Inbox from '../components/Inbox.svelte';
  import emails from "$lib/emails.json";

  $: path = $page.url.pathname;

  let time = new Date();
  setInterval(function () {
    time = new Date();
  }, 100);

  let searchString = '';
  function search() {
    if (searchString === '') return;
    window.location.assign('https://www.duckduckgo.com/?q=' + encodeURI(searchString));
  }

  let searchInput: HTMLInputElement;
  onMount(() => searchInput.focus());
</script>

<div class="inbox">
  {#each emails as email} 
    <Inbox email={email} />
  {/each}
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
  <a href="/" class={path === '/' ? 'nav-link-active' : ''}>Home</a>
  <a href="/school" class={path === '/school' ? 'nav-link-active' : ''}
    >School</a
  >
  <a href="/dev" class={path === '/dev' ? 'nav-link-active' : ''}>Dev</a>
  <a href="/ayerin" class={path === '/ayerin' ? 'nav-link-active' : ''}
    >Ayerin</a
  >
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
