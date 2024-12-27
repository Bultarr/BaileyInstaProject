extends Line2D

@export var radius := 100.0       # Radius of the ring 100
@export var thickness := 6.0      # Thickness of the ring (reduce for thinner lines)
@export var segments := 64        # Number of segments for smoothness
@export var start_angle := 0.0    # Starting angle of the ring in radians
@export var end_angle := TAU - 0.4 # Ending angle of the ring in radians


func _ready():
	# Clear existing points
	clear_points()
	
	# Generate points in an arc pattern to leave a gap
	for i in range(segments + 1):
		var t = i / float(segments)
		var angle = lerp(start_angle, end_angle, t)
		var point = Vector2(radius * cos(angle), radius * sin(angle))
		add_point(point)
		
	
	# Set ring thickness
	width = thickness

