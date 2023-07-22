<script>
  import Shortcut from '../../components/Shortcut.svelte';
</script>

<div>
  <Shortcut
    shortcutUrl="https://dashboard.twitch.tv/u/ayerinslight/stream-manager"
    shortcutName="Stream<br />Manager"
    iconFileName="twitch.png"
  />
  <Shortcut
    shortcutUrl="https://dashboard.twitch.tv/u/ayerinslight/content/video-producer"
    shortcutName="Video<br />Producer"
    iconFileName="twitch.png"
  />
  <Shortcut
    shortcutUrl="https://studio.youtube.com/channel/UCkLfsduIbVWvWq9fVy7MvYA"
    shortcutName="Ayerin"
    iconFileName="ytstudio.png"
  />
  <Shortcut
    shortcutUrl="https://studio.youtube.com/channel/UCinMWuz0OX2tB7UoJlneeWw"
    shortcutName="AyerinsLight"
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
