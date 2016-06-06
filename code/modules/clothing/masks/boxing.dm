/obj/item/clothing/mask/balaclava
	name = "balaclava"
	desc = "LOADSAMONEY"
	icon_state = "balaclava"
	item_state = "balaclava"
	flags = BLOCKHAIR
	flags_inv = HIDEFACE
	visor_flags_inv = HIDEFACE
	w_class = 2
	action_button_name = "Adjust Balaclava"
	ignore_maskadjust = 0

/obj/item/clothing/mask/balaclava/attack_self(mob/user)
	adjustmask(user)

/obj/item/clothing/mask/luchador
	name = "Luchador Mask"
	desc = "Worn by robust fighters, flying high to defeat their foes!"
	icon_state = "luchag"
	item_state = "luchag"
	flags = BLOCKHAIR
	flags_inv = HIDEFACE
	w_class = 2

/obj/item/clothing/mask/luchador/speechModification(message)
	if(copytext(message, 1, 2) != "*")
		message = replacetxt(message, "captain", "CAPITÁN")
		message = replacetxt(message, "station", "ESTACIÓN")
		message = replacetxt(message, "sir", "SEÑOR")
		message = replacetxt(message, "the ", "el ")
		message = replacetxt(message, "my ", "mi ")
		message = replacetxt(message, "is ", "es ")
		message = replacetxt(message, "it's", "es")
		message = replacetxt(message, "friend", "amigo")
		message = replacetxt(message, "buddy", "amigo")
		message = replacetxt(message, "hello", "hola")
		message = replacetxt(message, " hot", " caliente")
		message = replacetxt(message, " very ", " muy ")
		message = replacetxt(message, "sword", "espada")
		message = replacetxt(message, "library", "biblioteca")
		message = replacetxt(message, "traitor", "traidor")
		message = replacetxt(message, "wizard", "mago")
		message = uppertext(message)	//Things end up looking better this way (no mixed cases), and it fits the macho wrestler image.
		if(prob(25))
			message += " OLE!"
	return message

/obj/item/clothing/mask/luchador/tecnicos
	name = "Tecnicos Mask"
	desc = "Worn by robust fighters who uphold justice and fight honorably."
	icon_state = "luchador"
	item_state = "luchador"

/obj/item/clothing/mask/luchador/rudos
	name = "Rudos Mask"
	desc = "Worn by robust fighters who are willing to do anything to win."
	icon_state = "luchar"
	item_state = "luchar"