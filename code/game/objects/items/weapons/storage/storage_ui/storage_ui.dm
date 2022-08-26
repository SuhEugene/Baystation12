/datum/three_part_slot
	var/atom/item
	var/obj/screen/storage_slot/stored_start
	var/obj/screen/storage_slot/stored_continue
	var/obj/screen/storage_slot/stored_end

/datum/three_part_slot/New(var/item)
	..()
	stored_start = new()
	stored_start.icon_state = "stored_start"
	stored_continue = new()
	stored_continue.icon_state = "stored_continue"
	stored_end = new()
	stored_end.icon_state = "stored_end"

/datum/three_part_slot/Destroy()
	item = null
	QDEL_NULL(stored_start)
	QDEL_NULL(stored_continue)
	QDEL_NULL(stored_end)
	. = ..()

/datum/three_part_slot/proc/set_item(var/item)
	src.item = item
	src.stored_start.master = item
	src.stored_continue.master = item
	src.stored_end.master = item

/datum/three_part_slot/proc/set_screen_loc(var/screen_loc)
	return

/datum/three_part_slot/proc/set_transforms(var/transform_start, var/transform_continue, var/transform_end)
	return

/datum/three_part_slot/proc/set_layer(var/layer)
	return
/datum/storage_ui
	var/obj/item/storage/storage

/datum/storage_ui/New(var/storage)
	src.storage = storage
	..()

/datum/storage_ui/Destroy()
	storage = null
	. = ..()

/datum/storage_ui/proc/show_to(var/mob/user)
	return

/datum/storage_ui/proc/hide_from(var/mob/user)
	return

/datum/storage_ui/proc/prepare_ui()
	return

/datum/storage_ui/proc/close_all()
	return

/datum/storage_ui/proc/on_open(var/mob/user)
	return

/datum/storage_ui/proc/after_close(var/mob/user)
	return

/datum/storage_ui/proc/on_insertion(var/mob/user)
	return

/datum/storage_ui/proc/on_pre_remove(var/mob/user, var/obj/item/W)
	return

/datum/storage_ui/proc/on_post_remove(var/mob/user, var/obj/item/W)
	return

/datum/storage_ui/proc/on_hand_attack(var/mob/user)
	return
