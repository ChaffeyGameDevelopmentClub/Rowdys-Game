extends Node2D
var win
var puzzle
var relaselb
var relaserb
func _ready():
	puzzle =get_node("Node/Puzzle_bg")
	print("script is loaded")
	
func _physics_process(delta):
	
	if (relaselb):
		puzzle.rotate(-.01)
	if(relaserb):
		puzzle.rotate(.01)

func _on_lb_button_down():
	relaselb = true
	


func _on_rb_button_down():
	relaserb = true
	print("rb pressed down")


func _on_lb_button_up():
	relaselb = false


func _on_rb_button_up():
	relaserb = false


func _on_area_2d_body_entered(body):
	print("You win")
