<script>
  import Shortcut from '../../components/Shortcut.svelte';
</script>

<div>
  <Shortcut
    shortcutUrl="https://github.com/armin555?tab=repositories"
    shortcutName="armin555"
    iconFileName="github.png"
  />
  <Shortcut
    shortcutUrl="https://github.com/arminmiau?tab=repositories"
    shortcutName="arminmiau"
    iconFileName="github.png"
  />
  <Shortcut
    shortcutUrl="https://github.com/orgs/Ayerins-Hammer/repositories"
    shortcutName="Ayerin's Hammer"
    iconFileName="github.png"
  />
  <Shortcut
    shortcutUrl="vscode://file/C:/Users/Armin/svelte-hometab"
    shortcutName="svelte-hometab"
    iconFileName="vscode.png"
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
