extends Node

onready var game_start_time = OS.get_ticks_msec()
var current_spawn = null
var total_deaths = 0

func reset():
	current_spawn = null
	get_tree().reload_current_scene()
	game_start_time = OS.get_ticks_msec()

func get_deaths():
	return str(total_deaths)
	
func check_reset():
	total_deaths +=1
	if current_spawn == null:
		reset()
	else:
		return false

func set_spawn(spawn):
	current_spawn = spawn
	
func get_spawn():
	return current_spawn
	
func get_time():
	var current_time = OS.get_ticks_msec() - game_start_time
	var minutes = current_time/1000/60
	var seconds = current_time/1000%60
	var ms = current_time%1000/10
	if minutes < 10:
			minutes = "0"+str(minutes)
	if seconds < 10:
			seconds = "0"+str(seconds)
	if ms < 10:
		if ms == 0:
				ms = "00"
		else:
			ms = "0"+str(ms)
	var text =  str(minutes)+ ":"+str(seconds)+ ":"+str(ms)
	return text
	
