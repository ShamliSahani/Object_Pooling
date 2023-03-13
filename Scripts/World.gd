extends Node2D

var player = preload("res://Scenes/player.tscn")
var pool_item = []
var pool_size = 13
var pos = Vector2(300,400)
var playerInst

func _ready():
	self.position = pos
	for i in pool_size:
		player_instance()
		print(i)
	pass

func _process(delta):
	#bull_spawn()
	pass

func player_instance():
	playerInst = player.instance()
	playerInst.position = Vector2(0,0)
	playerInst.rotation = 0
	playerInst.visible = false
	playerInst.alive = false
	pool_item.append(playerInst)
	#setup(playerInst)
	add_child(playerInst)


func reallocate(inst):
	#inst.position = self.position
	#inst.rotation = self.rotation
	inst.visible = true
	inst.alive = true
	print("rellocate",inst.position)


func _on_Timer_timeout():
	for inst in pool_item:
		#print(inst.alive)
		#print(playerInst.alive)
		if inst.alive == false:
			#playerInst.position = Vector2(0,0)
			#playerInst.visible = false
			#playerInst.alive = false
		#else:
			bull_spawn(inst)
			#reallocate(inst)
			break
func bull_spawn(inst):
	#print("bullet spawned")
	#inst.rotate(0.5)
	reallocate(inst)
	#_on_Timer_timeout()
	pass
