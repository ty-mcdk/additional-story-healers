# My First Mod

A `content` mod for the LOVE2D Pokemon Red engine (mod api 2).

## Layout

- `manifest.json` - identity, version range, load order
- `main.lua` - the entry chunk; receives the `mod` object

## Loop

1. `POKEPORT_DEV=1 love .` once, leave it running
2. edit, press F5 to hot-reload, backtick for the dev console
3. `python3 tools/modkit.py validate my_first_mod` before sharing
4. `python3 tools/modkit.py pack mods/my_first_mod` to ship
