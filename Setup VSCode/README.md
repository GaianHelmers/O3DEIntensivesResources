# Resource Usage Instructions

## Project to Ninja Configuration Command
`cmake -G "Ninja Multi-Config" -S . -B build/windows`

Multi config allows the configuration of all 3 types. The build command stating --profile means you only build that one while compiling.
You can install and use the ["Reconfigure Build"](/O3DE VSCode bat Files/Project bats/z_reconfigure_build.bat) bat and task to be able to reset this regularly.

---------

## Winget Commands

git: `winget install --id=Git.Git  -e`

git lfs: `winget install --id=GitHub.GitLFS  -e`

ninja: `winget install --id=Ninja-build.Ninja  -e`

---------

## VSCode Settings

### Prepare Files
- Find and Replace `< Project Folder Name >` with your Workspace Project Folder Name. (ex. Intensives2025)
- Find and Replace `< Path to 3rd Party Gems >` with the path to your 3rd Party Gems. (ex. C:/Users/you/.o3de/3rdParty)
- Find and Replace `< EngineSourceFolderName >` with your Workspace Engine Source Folder Name. (ex. O3DEEngine)

#### Project Settings Files
- In settings.json select your number of Parallel Jobs
- In launch.json fill in `< Full Path To Project Editor.exe >` with the path to your built Editor.exe.

#### VSCode Setting Files
- In settings.json fill in `< Full Path to build/n_cc compilecommands.json >` with the path to your exported ninja_compilecommands.

---------

### Add Files to VSCode
Add the Project Settings files, setup, launch, and tasks, to your project/.vscode folder.

Copy and Paste the VSCode Settings files, settings, and keybinding, into your files.
- Settings can be found by:
   - Select the Gear Icon in the bottom left corner.
   - Select Settings. (Ctrl+,)
   - Select the page and arrow icon in the right side of the file tabs bar. "Open Settings (JSON)"

- Keybindings can be found by:
   - Select the Gear Icon in the bottom left corner.
   - Select Keyboard Shortcuts. (Ctrl+K + Ctrl+S)
   - Select the page and arrow icon in the right side of the file tabs bar. "Open Keyboard Shortcuts (JSON)"

---------

## O3DE .bat Files

### Engine Source Folder .bat
Add "z_create_component.bat" to your Editor Source Folder.

Right click the .bat and select "Edit".
- Replace `<Gem Dev Folder Path>` with the direct path to your Gem Development Folder.
- Replace `<Default Gem Folder>` with your chosen Gem Folder name.
- Replace `<Default Gem Name>` with your Gem Name. For namespaces.

### Project Folder .bats
Add "z_build_project_editor_profile.bat" to your Project Folder.

Add "z_reconfigure_build.bat" to your Project Folder.

Add "z_create_ninja_buildcommands.bat" to your Project Folder.

Right click the "z_create_ninja_buildcommands.bat" and select "Edit".
- Replace `< Third Party Folder Path>` with the path to your O3DE 3rd Party Gems folder. (ex. C:/Users/you/.o3de/3rdParty).
- Note: The build path will be the shortened "n_cc" build path.

> Happy Coding!

---------

# Useful Links

### O3DE Source Code
[O3DE Source Code Repo](https://github.com/o3de/o3de/)

### Documentation
[Setting up O3DE from GitHub](https://www.docs.o3de.org/docs/welcome-guide/setup/setup-from-github/)

[Building for Windows](https://www.docs.o3de.org/docs/welcome-guide/setup/setup-from-github/building-windows/)

[Using VSCode to build O3DE](https://github.com/o3de/o3de/wiki/Using-VSCode-to-build-O3DE#windows)

["VS Code C++ code autocomplete and navigation" by rzDmyth](https://www.youtube.com/watch?v=-_RRuanDwCQ)

["O3DE Points Of Interest List" by mythrz](https://github.com/mythrz/O3DE_PointsOfInterestList/tree/main)


### O3DE Discord
[Discord](https://discord.com/invite/o3de)