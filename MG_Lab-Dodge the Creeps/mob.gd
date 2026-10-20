extends RigidBody2D


func _ready():
	var mob_types = $AnimatedSprite2D.sprite_frames.get_animation_names()
	var random_index = randi_range(0, mob_types.size() - 1)
	$AnimatedSprite2D.animation = mob_types[random_index]
	$AnimatedSprite2D.play()

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

func _process(_delta: float) -> void:
	pass
