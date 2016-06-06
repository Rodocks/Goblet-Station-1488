/*
Assistant
*/
/datum/job/assistant
	title = "Assistant"
	flag = ASSISTANT
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = "absolutely everyone"
	selection_color = "#dddddd"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	outfit = /datum/outfit/job/assistant

/datum/job/assistant/get_access()
	if((config.jobs_have_maint_access & ASSISTANTS_HAVE_MAINT_ACCESS) || !config.jobs_have_minimal_access) //Config has assistant maint access set
		. = ..()
		. |= list(access_maint_tunnels)
	else
		return ..()

/datum/job/assistant/config_check()
	if(config && !(config.assistant_cap == 0))
		total_positions = config.assistant_cap
		spawn_positions = config.assistant_cap
		return 1
	return 0


/datum/outfit/job/assistant
	name = "Assistant"

/datum/outfit/job/assistant/pre_equip(mob/living/carbon/human/H)
	..()
	if (config.grey_assistants)
		uniform = /obj/item/clothing/under/color/grey
	else
		uniform = /obj/item/clothing/under/color/random

/datum/job/Goblet
	title = "Goblet"
	flag = ASSISTANT
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = "Rodocks and AJ"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/goblet

/datum/job/goblet/get_access()
	access = list(access_admin_goblet)
	minimal_access = list(access_admin_goblet)

/datum/job/assistant/config_check()
	if(config && !(config.assistant_cap == 0))
		total_positions = config.assistant_cap
		spawn_positions = config.assistant_cap
		return 1
	return 0


/datum/outfit/job/goblet
	name = "Goblet"

/datum/outfit/job/goblet/pre_equip(mob/living/carbon/human/H)
	..()
	if (config.grey_assistants)
		uniform = /obj/item/clothing/under/gimmick/ass
	else
		uniform = /obj/item/clothing/under/gimmick/ass

/datum/job/AJ
	title = "AJ"
	flag = ASSISTANT
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = "No one"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/goblet

/datum/job/goblet/get_access()
	access = list(access_admin_goblet)
	minimal_access = list(access_admin_goblet)

/datum/job/assistant/config_check()
	if(config && !(config.assistant_cap == 0))
		total_positions = config.assistant_cap
		spawn_positions = config.assistant_cap
		return 1
	return 0


/datum/outfit/job/goblet
	name = "Goblet"

/datum/outfit/job/goblet/pre_equip(mob/living/carbon/human/H)
	..()
	if (config.grey_assistants)
		uniform = /obj/item/clothing/under/gimmick/ass
	else
		uniform = /obj/item/clothing/under/gimmick/ass
