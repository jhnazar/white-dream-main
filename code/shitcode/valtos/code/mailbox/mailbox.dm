/////////////////////////////////////////////////////
//
//
// Cross-server mailbox -- Not Finished
//
//
/////////////////////////////////////////////////////

SUBSYSTEM_DEF(mailbox)
	name = "Mailbox"
	flags = SS_BACKGROUND
	priority = FIRE_PRIORITY_SERVER_MAINT
	runlevels = RUNLEVEL_GAME | RUNLEVEL_POSTGAME
	wait = 100

	var/list/mailboxes = list()
	var/list/parcels = list()

/datum/controller/subsystem/mailbox/stat_entry()
	..("MB:[mailboxes.len]|P:[parcels.len]")

/datum/controller/subsystem/mailbox/fire()
	

/obj/machinery/mailbox
	name = "mailbox"
	desc = "�������� ����, ������� ��������� ������������ �������� ����� ���������. ��������� ������ ����������� ����������."
	icon = 'code/shitcode/valtos/icons/forge/machinery.dmi'
	icon_state = "mailbox"
	anchored = TRUE
	max_integrity = 500
	density = TRUE
	use_power = IDLE_POWER_USE
	idle_power_usage = 10
	active_power_usage = 300
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	circuit = null
	light_range = 2
	light_power = 1.5
	light_color = LIGHT_COLOR_CYAN


/obj/machinery/mailbox/attackby(obj/item/I, mob/user)

	if(user.a_intent == INTENT_HARM)
		return ..()

	if(istype(I, /obj/item/storage/box/mailbox))
		

	else
		to_chat(user, "<span class='alert'><b>[src.name]</b> �� ��������� <b>[I.name]</b>. ������ ����������� ����������.</span>")

/obj/item/storage/box/mailbox
	name = "box MK1"
	desc = "����������� �������, ������� �� ����� ���� ��� ������������ �������� ��������. ����������� ������� ������ �� �������������."
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF

