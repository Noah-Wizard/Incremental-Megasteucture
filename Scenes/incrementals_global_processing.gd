extends Node
@export var currency_1_label: Label

var currency1 = 0:
	set(value):
		currency1 = value
		currency_1_label.text = str(currency1)

var buy_cost_1 = 1
var speed_cost = 1
var speed = 1
