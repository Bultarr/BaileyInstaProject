extends RigidBody2D

func _ready() -> void:
	# Apply an initial impulse to the ball to start it moving
	apply_central_impulse(Vector2(-300, 500))  # Adjust these values as needed
	# Preserve the ball's speed by resetting its linear velocity magnitude

	var speed = 500  # Adjust this to your desired constant speed

