<script>
  import Shortcut from '../components/Shortcut.svelte';
</script>

<div>
  <Shortcut
    shortcutUrl="https://www.youtube.com"
    shortcutName="YouTube"
    iconFileName="yt.png"
  />
  <Shortcut
    shortcutUrl="https://www.twitch.tv"
    shortcutName="Twitch"
    iconFileName="twitch.png"
  />
  <Shortcut
    shortcutUrl="https://geizhals.at/"
    shortcutName="Geizhals"
    iconFileName="geizhals.png"
  />
</div>
<div>
  <Shortcut
    shortcutUrl="https://music.youtube.com"
    shortcutName="YT Music"
    iconFileName="ytmusic.png"
  />
  <Shortcut
    shortcutUrl="https://steamcommunity.com/chat/"
    shortcutName="Steam"
    iconFileName="steam.png"
  />
  <Shortcut
    shortcutUrl="ttps://monkeytype.com/"
    shortcutName="monkeytype"
    iconFileName="monkeytype.png"
    style="width: 126px !important; height: 80px !important"
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
