/datum/echo_editor
	var/obj/sound_player/player
	var/atom/source

/datum/echo_editor/New(obj/sound_player/player)
	src.player = player

/datum/echo_editor/ui_data(mob/user)
	var/list/list/data = list()
	data["echo_params"] = list()
	for (var/i=1 to 18)
		var/list/echo_data = list()
		echo_data["index"] = i
		echo_data["name"] = global.musical_config.echo_param_names[i]
		echo_data["value"] = src.player.echo[i]
		echo_data["real"] = global.musical_config.echo_params_bounds[i][3]
		data["echo_params"] += list(echo_data)
	return data

/datum/echo_editor/ui_interact(mob/user, ui_key = "echo_editor", datum/tgui/ui = null, force_open = FALSE, datum/tgui/master_ui = null, datum/ui_state/state = GLOB.default_state)
	ui = SStgui.try_update_ui(user, src, ui_key, ui, force_open)
	if(!ui)
		ui = new(user, src, ui_key, "echo_editor", "Echo Editor", 400, 600, master_ui, state)
		ui.open()

/datum/echo_editor/ui_act(action, params)
	if (..())
		return

	var/index = text2num(params["index"])
	if (params["index"] && !(index in 1 to 18))
		src.player.song.debug_panel.append_message("Wrong index was provided: [index]")
		return 0

	var/name = global.musical_config.echo_param_names[index]
	var/desc = global.musical_config.echo_param_desc[index]
	var/default = global.musical_config.echo_default[index]
	var/list/bounds = global.musical_config.echo_params_bounds[index]
	var/bound_min = bounds[1]
	var/bound_max = bounds[2]
	var/reals_allowed = bounds[3]

	switch (action)
		if ("set")
			var/new_value = min(max(input(usr, "[name]: [bound_min] - [bound_max]") as num, bound_min), bound_max)
			if (!isnum(new_value))
				return
			new_value = reals_allowed ? new_value : round(new_value)
			src.player.echo[index] = new_value
		if ("reset")
			src.player.echo[index] = default
		if ("reset_all")
			src.player.echo = global.musical_config.echo_default.Copy()
		if ("desc")
			to_chat(usr, "[name]: from [bound_min] to [bound_max] (default: [default])<br>[desc]")

	return 1