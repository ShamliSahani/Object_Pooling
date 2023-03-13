extends Node2D

var alive 
func _ready():
	pass # Replace with function body.

func _process(delta):
	if alive == true:
		print(self.position,",",visible)
		var radius = Vector2(10,10)
		self.position = Vector2(radius.x * 0.025 - delta * 2,radius.y * 0.025 - delta * 2)
		self.rotation += delta * 0.5
		
		


func _on_VisibilityNotifier2D_screen_exited():
	#alive = false
	pass


func _on_Timer_timeout():
	
	alive = false
	
