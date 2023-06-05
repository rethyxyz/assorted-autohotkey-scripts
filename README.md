# Assorted AutoHotkey Scripts
Some of these scripts are primitive, but some may be of use. Script explanations will follow the section's name.

## `Anti-idle.ahk`
`Anti idle.ahk` moves your mouse every 120 seconds. Stops your computer from idling. Useful for remote desktop connections that have unconfigurable timeouts.

## `Excel link extractor.ahk`
As far as I know, there's no right-click -> Copy hyperlink feature in Excel. You have to do a bunch of stuff to manually extract the link embedded. This is a way to extract a link, and alt tab to a browser and paste it.

Make sure the previous window selected before accessing Excel is a browser.

## `Treechord extras.ahk`
These are Treechord's old features. I moved these into another script for my own use.

Contained here are key binds that use the F1-F12 keys, CapsLock -> Escape, and a couple of other things.

Read the code to get a better picture.

## `Workspaces.ahk`
`Workspaces.ahk` attempts to implement workspace keybindings that Windows excludes.

It gets the job done, but it isn't a complete AHK implementation and it depends on the <a href="https://github.com/Eun/MoveToDesktop">MoveToDesktop program found on GitHub</a>, which is no longer maintained.

This also includes experimental, incomplete functions that are currently not in use. They're used to replace the current, less efficient workspace movement function that features a lot of redundant steps. It'll likely never be complete because I don't use the workspace/Task View feature on Windows anymore.