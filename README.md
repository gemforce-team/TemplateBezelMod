# Getting Started with Modding
In order to get started with modding, you are going to need a few things: the compiler, an IDE, a configured libraries folder, and a few required libraries. After these steps, a template `asconfig.json`, which is the main project file for the IDE set up in these steps, is provided.

## The Compiler
Download the [AIR SDK from Harman](https://airsdk.harman.com/download), and extract it to your computer somewhere. The Flex version isn't generally required, but if you want to use that, which contains some extra utilities, you should download and extract the [Flex SDK](https://flex.apache.org/download-binaries.html) first, then extract the "AIR SDK for Flex Developers" into the same directory.

## An IDE
The recommended IDE for Bezel mods is [Visual Studio Code](https://code.visualstudio.com/download), with a modified version of the VSCode AS3/MXML plugin, available through [my fork on GitHub](https://github.com/piepie62/vscode-as3mxml/releases).

## The Configured Libraries Folder
There are two steps required: setting up the folder itself, and configuring the IDE.
### Setting Up the Folder
There are two ways to set up the libraries folder: one that works on Windows, and one that works on all platforms.

If on Windows, edit your environment variables and add `BezelLibs`, which should point to an existing folder in which you want all of the libraries that mods you are building should be compiled against. This will allow the Bezel installer to automatically update this folder with Bezel as a library when you update your Bezel installation. It is required that, after this step, you run the Bezel installer in the proper directory to place that library into this directory automatically.

If you are not on Windows, or do not wish to take advantage of that feature of the Bezel installer, skip the environment variable step and simply create a folder to hold all of the libraries mods should be compiled against. You will also need to compile Bezel at least once to get the library version to place into this directory, once the rest of setup has been completed.

### Configuring the IDE
Find your newly-created library folder on your disk. In order to point VS Code to it, go to the extension settings for the extension: File->preferences->settings, then ensure that `User` and not `Workspace` is selected. In the dropdown, hit `Extensions`, then `Actionscript & MXML`. In the `As3mxml > Asconfigc: Additional Tokens` table, hit `Add Item`, and add the key `BezelLibs` with the value of your library folder's path. This will allow the template `asconfig.json` to find your libraries folder without hardcoding its path into it.

## Required Libraries
We provide a version of the game with all code stripped out, which allows compiling against game definitions. These files can be found at [our repository](https://github.com/gemforce-team/GemCraftShell/releases), and should be placed into the libraries folder along with the library version of Bezel. It is also necessary to place a utility library used by Bezel, [ANEBytecodeEditor](https://github.com/gemforce-team/ANEBytecodeEditor/releases), into this directory.

# Your Project
The final thing to do is start is your project. This repository includes an `asconfig.json` that provides the ability to use Bezel, GCCS, and GCFW classes. This should be sufficient to start out any normal mod, and other questions can be asked in [the GemCraft Discord server's](https://discord.gg/ftyaJhx) mod dev channel.
