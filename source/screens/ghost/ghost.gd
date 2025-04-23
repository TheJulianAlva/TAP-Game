extends CharacterBody2D

var posicionAnt:Vector2=position

func act_animacion(ruta:PathFollow2D,delta:float):
	ruta.progress+=GLOBAL.enemy_speed*delta
	posicionAnt=position
