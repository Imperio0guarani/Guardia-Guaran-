extends TextureButton


func _on_Boton_P_pressed():
	if get_tree().paused == true:
		get_tree().paused = false
	else:
			get_tree().paused = true
