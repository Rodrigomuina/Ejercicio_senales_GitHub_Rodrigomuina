extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "

var instancesCount = 0
@onready var red_generator = $RedGenerator
@onready var violet_generator = $VioletGenerator
@onready var count_label = $CountLabel


func _count_new_instance():
	instancesCount += 1
	count_label.text = str("Cantidad de instancias: ", instancesCount)

func _ready():
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	red_generator.connect("button_down",Callable(self, "_count_new_instance"))
	violet_generator.connect("button_down",Callable(self, "_count_new_instance"))
	
func delete():
	instancesCount = 0
	count_label.text = INSTANCES_TEXT + str(instancesCount)
