extends Node

export var touch_controller_analog_path := "TouchControllerAnalog"
export var touch_controller_dpad_path := "TouchControllerDPad"

export onready var controller_analog := find_node(touch_controller_analog_path) as CanvasLayer
export onready var controller_navigation := find_node(touch_controller_dpad_path) as CanvasLayer

onready var viewport_size := get_viewport().size
var current_controller

func _ready():
	if controller_analog != null and controller_navigation != null:
		return print("You instantiated analog and directional, instantiate just one")
	if controller_analog == null and controller_navigation == null:
		return print("You did not instantiate analog or directional")
		
	current_controller = controller_analog.get_children()[0] if controller_analog != null else controller_navigation.get_children()[0]
	current_controller.position = Vector2(viewport_size.x / 18, viewport_size.y / 5)
		

func get_values() -> Vector2:
	if current_controller != null and controller_navigation == null:
		var joystick = controller_analog.find_node("JoyStick")
		print(joystick)
		return joystick.get_value()
	else:
		return Vector2.ZERO
