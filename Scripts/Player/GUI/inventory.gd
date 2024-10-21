extends Node

var items_to_load := [
	"res://Scenes/Player/GUI/Inventory/Resources/gauntlet.tres"
]

func _ready():
	for i in 24:
		var slot := InventorySlot.new()
	for i in items_to_load.size():
		var item = IntventoryItem.new()
