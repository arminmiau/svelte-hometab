<script lang="ts">
  export let email: App.Email;
</script>

<a href={email.url} class="inbox-link">
  <img alt={email.iconAlt} src={email.iconPath} class="inbox-icon" />
</a>

<style>
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
</style>
