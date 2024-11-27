extends Node

@export var ball_velocity = 1200;
var player1_score = 0;
var player2_score = 0;

func _ready():
	start_new_round();
	

func _on_left_scoring_box_body_entered(body):
	print('player 2 scored');
	player2_score += 1;
	update_score_display($Player2Score, player2_score)
	start_new_round();


func _on_right_scoring_box_body_entered(body):
	print('player 1 scored');
	player1_score +=1;
	update_score_display($Player1Score, player1_score)
	start_new_round();

func update_score_display(node, score):
	node.text = str(score);	
	
func start_new_round():
	$Ball.position = Vector2($Arena.size.x / 2, $Arena.size.y / 2);
	$Ball.velocity = Vector2(ball_velocity if randi_range(0, 1) == 1 else -ball_velocity, randf_range(-300, 300));
