extends CollisionPolygon2D

@onready var line_2d = $"../Line2D"
@onready var ball = $"../../Ball"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _on_ball_body_entered(body: Node) -> void:
	# Check if the body is the Ball and change color
	if body.name == "Ball":
		line_2d.default_color = Color(randf(), randf(), randf())
		print("worked")
