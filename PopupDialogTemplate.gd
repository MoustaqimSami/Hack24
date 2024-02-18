extends Control

var correct_answer = "lol"
var input_text = ""
var submitted = false

func _ready():
	get_tree().paused = false
func _on_submit_button_pressed():
	input_text = $LineEdit.text
	submitted = true
	get_tree().paused = false
	is_answer_correct()
	hide() # Hide the popup

func _on_cancel_button_pressed():
	input_text = ""
	submitted = false
	get_tree().paused = false
	hide() # Hide the popup

func get_input_text():
	return input_text

func was_submitted():
	return submitted
	
func is_answer_correct():
	if input_text.to_lower() == correct_answer.to_lower():
		print("Correct!")
	else:
		print("Incorrect")
