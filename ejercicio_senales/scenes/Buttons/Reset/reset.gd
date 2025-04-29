extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_down():
	var Blocks = get_tree().get_nodes_in_group("Blocks")
	for block in Blocks:
		block.delete()
