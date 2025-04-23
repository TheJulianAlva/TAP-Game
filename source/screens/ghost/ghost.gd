class_name FollowEnemy extends CharacterBody2D

var lastPosition:Vector2=position

func update_animation(ruta:PathFollow2D,delta:float):
	var direction:String
	ruta.progress+=GLOBAL.enemy_speed*delta
	var difx=position.x-lastPosition.x
	var dify=position.y-lastPosition.y
	var difMayx=(abs(difx)-abs(dify))>0
	if(difMayx):
		direction="right" if difx>0 else "left"
	else:
		direction="down" if dify>0 else "up"
	$AnimSprite.play("walking_" + direction)
	lastPosition=position
