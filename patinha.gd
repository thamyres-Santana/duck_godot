extends Area2D


func _on_body_entered(body):
	if body.name == "player":
		print("VOCÊ CONSEGUIU!")
	pass # Replace with function body.
