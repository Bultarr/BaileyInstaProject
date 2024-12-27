extends StaticBody2D

# Speed of rotation in degrees per second
@export var rotation_speed: float = 90.0  # Adjust the speed as needed

func _process(delta: float) -> void:
	# Rotate the circle by the specified speed
	rotation += deg_to_rad(rotation_speed * delta)

#new code

@onready var line_2d = $Line2D  # Path to the Line2D node
@onready var collision_polygon_2d = $Area2D/CollisionPolygon2D
@onready var area_2d = $Area2D

func _ready():
	# Connect the body_entered signal from the CollisionPolygon2D to the _on_body_entered function
	#area_2d.connect("body_entered", self, "_on_body_entered")
	pass

func _on_body_entered(body: Node) -> void:
	# Check if the body is the Ball (RigidBody2D)
	if body.name == "Ball":
		# Change the Line2D's color to a random color
		line_2d.default_color = Color(randf(), randf(), randf())
		print("Collision detected with Ball")


func _on_area_2d_body_entered(body):
	# Check if the body is the Ball (RigidBody2D)
	if body.name == "Ball":
		# Change the Line2D's color to a random color
		line_2d.default_color = Color(randf(), randf(), randf())
		print("Collision detected with Ball")
