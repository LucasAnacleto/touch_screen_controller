# TOUCH-SCREEN-CONTROLLER
On screen controllers to be used with touch screens

Made with [godot engine](https://godotengine.org/) v3.2.3

## Features

- Node
- CanvasLayer
- Node2D
- Sprites
- TouchScreenButton
- Position element

## How to use
 
- Clone the project inside a "modules" 
- Adjust position in the _read method in the controller.gd script, the method already takes the screen size, however it is necessary to adjust the calculation
- Add the children 'TouchControllerAnalog', 'TouchControllerDPad' (remember to choose one or the other) and of course, 'Buttons' within the tree, the scenes must be children of the 'Controller' scene
- if you want to control your player with the analog, use the get_values() method. Example:

```
extends KinematicBody2D

onready var joy_stick := $Controller

func _process(delta):
	move_and_slide(joy_stick.get_values() * 800)
```
