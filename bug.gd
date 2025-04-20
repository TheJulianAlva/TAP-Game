extends CharacterBody2D

var posicionAnt:Vector2=position

func act_animacion(ruta:PathFollow2D,delta:float):
	ruta.progress+=GLOBAL.enemy_speed*delta
	posicionAnt=position
	var animation: String
	var difx=position.x-posicionAnt.x
	var dify=position.y-posicionAnt.y
	var difMayx=(abs(difx)-abs(dify))>0
	if(difMayx):
		animation="walking_right" if difx>0 else "walking_left"
	else:
		animation="walking_down" if dify>0 else "walking_up"
	$Enemigo.play(animation)
	posicionAnt=position
