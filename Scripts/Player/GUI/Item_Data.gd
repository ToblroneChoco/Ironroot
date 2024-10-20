class_name ItemData
extends Resource

enum Type {HEAD, CHEST, LEFT-ARM, RIGHT-ARM, LEFT-LEG, RIGHT-LEG, LEFT-FOOT, RIGHT-FOOT, LEFT-HAND, RIGHT-HAND, NECKLACE, RING, INVENTORY}

@export var type: Type
@export var item_name: String
@export var item_damage: int
@export var item_defense: int
@export_multiline var description: String
@export var item_texture: Texture2D
