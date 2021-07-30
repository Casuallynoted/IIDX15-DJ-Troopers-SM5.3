# IIDX15-DJ-Troopers-SM5.3
A StepMania 5.3 update for the Beatmania IIDX 15 (DJ Troopers) theme

# Known Bugs

(There are a lot of these)

Global:

-Project OutFox Logo appears on Title Screen

-Certain visual/audio components of the theme are tied to theme-specific customisation options, but the theme does not set defaults. This leads to things like the music select menu/bgm and turntable graphics missing. Setting defaults for these should rectify this issue.

-As an additional issue to that, the theme uses a specific static background track for the music select menu. Would likely be a better idea to change this so that it plays the song in preview and only plays the generic background track when a song is not selected.

-During gameplay, turntable graphics appear to be at the opposite side of the screen as the OutFox button/note visuals. Putting the OutFox buttons/turntable layout in line with the theme would be a good idea.

-In certain menus, the graphics appear to be squished and not taking up the full screen. This can lead to a few visual issues. Nothing entirely game breaking in most cases but definitely something that should be resolved.

-Options menu seems to fall back to default OutFox options. This is probably a good thing at the moment considering the state of the theme, but would be good to figure this one out so that options are visually consistent with the rest of the theme. The "Saving Profile..." dialogue also seems to use the default Outfox theme.

-Not exactly a bug, but finding a way to better integrate player profiles with the results screen would be really neat.

Beat:

-Currently no support for Versus 5 or 7 on the Style Select Screen

-Lua errors present in difficulty selection screen (Referencing self/null)

-Theme uses Pump graphic before starting song, needs to be replaced with an IIDX graphic

-Scoring lua references nil values during gameplay
