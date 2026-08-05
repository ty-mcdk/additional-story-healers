return function(mod)

  local function RegisterHealer(mapId, npcIndex, scriptKey, npcRange)
    mod.content.map_scripts:register(mapId, {
      talk = {
        [scriptKey] = {
          { "ask", "You look exhausted.\nWould you like to rest?" },
          { "jump_if_false", "declined" },

          -- Yes Branch
          { "show_text", "Okay, I'll take your\nPOKeMON for a few seconds." },
          { "fade", "out", 30 },
          { "play_music", "Music_PkmnHealed", { keep = false } },
          { "heal_party" },
          { "fade", "in", 30 },
          { "show_text", "Thank you for waiting.\nYour POKeMON are fully healed!" },
          { "play_default_music" },
          { "jump", "end" },

          -- No Branch
          { "label", "declined" },
          { "show_text", "Come back if you\nneed to rest!" },
        },
      },
    })


    mod.content.maps:patch(mapId, {
      objects = {
        [npcIndex] = {
          movement = "STAY",
          range = npcRange or "DOWN"
        }
      }
    })
  end
  --end RegisterHealer()


  -- The SS Anne Room NPC
  RegisterHealer(
    "SS_ANNE_1F_ROOMS",
    5,
    "TEXT_SSANNE1FROOMS_GIRL1",
    "UP"
  )

end
--End Mod
