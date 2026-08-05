# Additional Story Healers

A quality-of-life mod which strategically places party healers in areas which would normally have repeated tedious backtracking back to Pokemon Centres. For example when battling on the SS Anne. Designed to not ruin the usual gameflow and work well with a first-time play through. Aiming for convenience and QoL, not making the game any easier.

## How It Works

Sets up a ReisterHealer() function to override an NPC to make them a party healer (identical to going to a Pokemon centre):

1. Replaces their normal dialog with a functional yes/no prompt
2. Executes a sequence with screen fades, healing audio and the 'heal_party' command
3. Restores the default music when finished
4. Patches the NPC to stay still (so the player doesn't have to chase them), with an optional value of which way they should face


The function is set up to make adding new NPCs easy & rapid. Pass on their map id (eg "SS_ANNE_1F_ROOMS"), npc index (pull from the maps.lua index value for the character), script key (Eg "TEXT_SSANNE1FROOMS_GIRL1") and an optional parameter for which way they should face

Pick NPCs who don't interact with the player in any meaningful way, ie they don't trigger battles or events, hand over items, have important dialog etc. Stick to NPCs with trivial dialog so the game isnt soft-locked.

Currently this only modifies one of the girls in SS Anne Room 1F as it was the first area which came to mind and why I made the mod. I plan to add more healers based on known pain points or as requested. 


## Current Limitation
For now this only modifies an NPC, it doesn't create new ones. This may be added later if required, if a suitable NPC can't be found in an area.



## Installation
1. Download the latest `.zip` release.
2. Drag mod into the launcher with the mods tab open. Alternatively place extract the mod from the `.zip` file and place it into your `mods/` directory.
3. Launch the game. The engine will automatically mount the mod.