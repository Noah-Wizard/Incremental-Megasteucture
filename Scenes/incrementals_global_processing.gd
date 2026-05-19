extends Node
@export var currency_1_label: Label

var currency1 = 0:
	set(value):
		currency1 = value
		currency_1_label.text = str(currency1)
