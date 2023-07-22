<script>
  import Shortcut from '../../components/Shortcut.svelte';
</script>

<div>
  <Shortcut
    shortcutUrl="https://www.htl-grieskirchen.net/"
    shortcutName="HTL"
    iconFileName="htl.png"
  />
  <Shortcut
    shortcutUrl="https://arche.webuntis.com/WebUntis/?school=htbla-grieskirchen#/"
    shortcutName="WebUntis"
    iconFileName="webuntis.png"
  />
  <Shortcut
    shortcutUrl="https://www.eduvidual.at/"
    shortcutName="Eduvidual"
    iconFileName="eduvidual.png"
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
