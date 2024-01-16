<script>
  import Shortcut from '../../components/Shortcut.svelte';
</script>

<div>
  <Shortcut
    shortcutUrl="https://dashboard.twitch.tv/u/ayerinslight/stream-manager"
    shortcutName="Stream Manager"
    iconFileName="twitch.png"
  />
  <Shortcut
    shortcutUrl="https://dashboard.twitch.tv/u/ayerinslight/content/video-producer"
    shortcutName="Video Producer"
    iconFileName="twitch.png"
  />
  <Shortcut
    shortcutUrl="https://studio.youtube.com/"
    shortcutName="YT Studio"
    iconFileName="ytstudio.png"
  />
</div>

<style>
  div {
    width: 96%;
    margin-right: 4%;
    justify-content: center;
    display: flex;
  }
</style>
