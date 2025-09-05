# Blaze Practice Map
Minecraft Map for Practicing the Blaze Spawner Split in Speedruns

## Blocked Spawning Spaces / Spawning Potential
Since maximizing the spawnable area is vital, this map implements a feature to **detect spawning spaces** that are **blocked or too bright** for blazes to spawn. By counting the blocked spaces and weighing them according to the triangular distribution used by the spawner algorithm a **spawning potential** can be calculated which should give a decent overview over how cleared out the spawner is.


⚠️ Unfortunately this method is quite resource intensive and **may cause lag** on weaker system. If you experience lag, try **turning down the resolution setting** or **disabling** this feature.

## Loadout Item Randomizer
To create a randomized item put a shulker box in the slot you want to randomize. When loading the loadout, a random item from the shulker will be chosen and given to the player. Glass panes can be used to indicate no item.

## Transfer Loadouts to new Version
To transfer your loadouts copy the file `data\command_storage_inventory.dat` from the old map to the new one.
