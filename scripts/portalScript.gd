extends Area2D

export (String) var escena


func _on_portal_body_entered(body):
	if body.name == "francia":
		get_tree().change_scene ("res://escena/"+escena+".tscn")
	pass
