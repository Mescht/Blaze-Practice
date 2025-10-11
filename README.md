# Blaze Practice Map
Minecraft Map for Practicing the Blaze Spawner Split in Speedruns

## Features
- Multiple Customizable Loadouts
- Loadout Item Randomizer
- Show Blocked Spawning Spaces
- Calculate Spawning Potential
- Terrain Selection
- ... and more

## Blocked Spawning Spaces / Spawning Potential
Since maximizing the spawnable area is important for a fast fort split, this map implements a feature to **detect spawning spaces** that are **blocked or too bright** for blazes to spawn. By counting the blocked spaces and weighing them according to the triangular distribution used by the spawner algorithm a **spawning potential** can be calculated which should provide a decent metric for how cleared out the spawner is.

<img height="300" alt="2025-10-11_12 57 30" src="https://github.com/user-attachments/assets/a0af8968-d4c2-48da-a71a-9b00ee80416f" />


⚠️ Unfortunately this method is quite resource intensive and **may cause lag** on weaker system. If you experience lag, try **turning down the resolution setting** or **disabling** this feature.

## Loadout Item Randomizer
To create a randomized item put a shulker box in the slot you want to randomize. When loading the loadout, a random item from the shulker will be chosen and given to the player. Glass panes can be used to indicate no item.

## Transfer Loadouts to new Version
To transfer your loadouts copy the file `data\command_storage_inventory.dat` from the old map to the new one.
