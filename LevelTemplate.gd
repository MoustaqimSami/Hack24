extends Node2D
@onready var wall1 = $Wall2
@onready var wall2 = $Wall1
@onready var popup = PopupDialogTemplate


# Called when the node enters the scene tree for the first time.

func incorrectAnswer():
	wall1._moveWallUp()
	wall2._moveWallUp()

func correctAnswer():
	print("Correct!")

func checkAnswer():
	if popup.is_answer_correct() == true:
		correctAnswer()
		print("correct!")
	else:
		incorrectAnswer()
		print("incorrect")

func main():
	
	if popup.submitted == true:
		print("check")
		checkAnswer()


func _process(delta):
	main()
	print(popup.submitted)
