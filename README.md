# NS_Spawnsmoke
Smoking Spawn Script
This FiveM resource automatically triggers a smoking animation the moment a player spawns into the server. It includes an on-screen prompt allowing the player to cancel the action at any time.

Features:
- Instant Animation: Triggers the WORLD_HUMAN_SMOKING scenario immediately upon spawning.

- UI Prompt: Displays a clean, right-aligned instruction message to the user.

- Toggle Control: Players can easily stop the animation by pressing the X key.

- Performance Optimized: The script utilizes a low-overhead loop that only runs UI functions while the animation is active.

Installation:
Download/Create: Place the folder containing the script files into your server's resources directory.

Rename: You can rename the folder to whatever you prefer (e.g., start_smoke).

Configure: Open your server.cfg file and add the following line:

ensure NS_spawnsmoke

Restart: Restart your server or type refresh and start your_folder_name in your server console.
