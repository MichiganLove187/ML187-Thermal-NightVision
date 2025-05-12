# ML187 Night Vision & Thermal Vision

A script that allows players to use night vision and thermal vision goggles.

## Features
- Use night vision goggles to see in the dark
- Use thermal vision goggles to see heat signatures
- Animation when putting on/taking off goggles
- Sound effect when activating night vision

## Framework Support
This script supports both QBCore and QBox frameworks. You can select which framework to use in the config.lua file.

## Installation

1. Place the `ml187-nightvision` folder in your server's resources directory
2. Add `ensure ml187-nightvision` to your server.cfg
3. Configure the script in `config.lua` to match your server's needs
4. Set the `Config.Framework` option to either "qbcore" or "qbox" depending on your server

## Configuration

In `config.lua`, you can configure:
- Which framework to use (QBCore or QBox)
- Item names for night vision and thermal vision goggles
- Sound settings for night vision activation

## Items Required
- ["nightvision"]                  = {["name"] = "nightvision",                   ["label"] = "Night Vision goggles",     ["weight"] = 5,         ["type"] = "item",      ["image"] = "nightvision.png",          ['unique'] = true,   	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Bravo Six, going dark'},

- ["thermalvision"]                  = {["name"] = "thermalvision",                   ["label"] = "thermal Vision goggles",     ["weight"] = 5,         ["type"] = "item",      ["image"] = "thermalvision.png",          ['unique'] = true,   	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Bravo Six, going dark'},


## Dependencies
- QBCore or QBox framework
- InteractSound (for night vision sound effect)

## Usage
- Use the night vision goggles item from your inventory to toggle night vision
- Use the thermal vision goggles item from your inventory to toggle thermal vision

# Preview
-Coming Soon