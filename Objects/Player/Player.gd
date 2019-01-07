extends KinematicBody2D

var SPEED = 200 
var GRAVITY = 1200
var MAX_JUMP_TIME = .25
var COYOTE_TIME = .1
var JUMP_SPEED = 350
var HANG_FORCE = 900
var screensize
var velocity
var jumping = false
var prev_jumped = false
var hang_time = 0


func _ready():
	screensize = get_viewport_rect().size
	velocity = Vector2()

func _process(delta):
	pass
	
func _physics_process(delta):
	var gforce = Vector2(0, GRAVITY)
	velocity.x = 0
	if Input.is_action_pressed("ui_right"):
		velocity.x += SPEED
	if Input.is_action_pressed("ui_left"):
		velocity.x -= SPEED
	if Input.is_action_pressed("ui_up"):
		if is_on_floor():
			prev_jumped = true
			jumping = true 
			velocity.y -= JUMP_SPEED
		elif jumping and hang_time < MAX_JUMP_TIME:
			velocity.y -= HANG_FORCE*delta
		elif not jumping and hang_time < COYOTE_TIME and prev_jumped == false:
			jumping = true
			velocity.y -= JUMP_SPEED
			hang_time = 0
			prev_jumped = true
		else:
			 jumping = false
	
	hang_time += delta
	if is_on_floor():
		hang_time = 0
		prev_jumped = false
	
	if Input.is_action_just_released("ui_up"):
		jumping = false
	
	velocity += gforce*delta
	velocity = move_and_slide(velocity, Vector2(0,-1))
	
	if velocity.y >= 0:
		jumping = false

