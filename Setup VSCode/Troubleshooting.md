# Troubleshooting

## VSCode Project Doesn't have CMAKE tools.
Restart vscode after you place the .vscode files.

## CMakePresets.json has error
Add the project to the Project Manager

## Configure target only says "Add a New Preset..."
Add the project to the Project Manager

### Issue with "Using the wrong generator"
Run the "Reconfigure Build" task. (ctrl+shift+b > Reconfigure Build > Continue Without...)

It may be reconfiguring at other stages and undoing this step.

You should be able to `Reconfigure > Build (F7) > Run (F5)`.

---------

### Configuration just happens? Keeps happening?
Check for the "Configure On" settings in vscode settings.

```
"cmake.automaticReconfigure": false,
"cmake.configureOnEdit": false,
"cmake.configureOnOpen": false,
```
---------

### Configuration/Build happens on Run
Check for the "Build Before Run" setting in vscode settings.
`"cmake.buildBeforeRun": false`