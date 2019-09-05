extends Control

var story = "%s %s %s Once upon a time.You are a little boy or girl who tended a sheep farm form wolf.Everyone call you ... .Yeah! Your name is … and beloved by the villagers. But you're bored because there's nothing to play in the farm which have only sheeps.So you plan to run around the village While shouting ...You shout ... around the village.That annoys the villagers a lot.So they rushed and crunched you until you passed away.Game over"
var questions = []
var question_number = 0
var answers = []

func _ready():
		
	questions.append("Once upon a time. You are a little boy or girl who tended a sheep farm form wolf.\nEveryone call you...")
	questions.append("Yeah Your name are … and beloved by the villagers. But you are bored because there are nothing to play in the farm which have only sheeps.So you plan to run around the village While shouting ...")
	questions.append("You shout ... around the village.That annoys the villagers a lot.So they rushed and crunched you until you passed away.")
	
	
	$VBoxContainer/DisplayText.text = questions[0]
	$PlayerInput.text = ""

func _on_PlayerButton_pressed():
	if question_number == 0:
		answers.append($PlayerInput.text)
		print(answers)
		$VBoxContainer/DisplayText.text = questions[1]
		$PlayerInput.text = ""

	
	if question_number == 1:
		answers.append($PlayerInput.text)
		print(answers)
		$VBoxContainer/DisplayText.text = questions[2]
		$PlayerInput.text = ""

	
	if question_number == 2:
		answers.append($PlayerInput.text)
		print(answers)
		$VBoxContainer/DisplayText.text = story % answers
		$PlayerInput.text = ""

	question_number = question_number + 1