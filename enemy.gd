extends CharacterBody2D

@export var speed = 50
var player_distacne = false
var player = null

func _physics_process(delta):
	if player_distacne:
		position += (player.position - position) / speed

		
		
		

func _on_player_distacne_body_entered(body):
	player = body
	player_distacne = true


func _on_player_distacne_body_exited(body):
	player = null
	player_distacne = false
