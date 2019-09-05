extends Control

var story = "Hello! my name is %s\nMy last name is %s\nMy pet is %s\nI have %s baht"
var questions = []
var answers = ["ans1","ans2","ans3","ans4"]
var pre1
var pre2
var pre3
var pre4

func _ready():
	print(story % answers)
	$VBoxContainer/DisplayText.text = "Hello there \nPlease press button to start"
	
	questions.append("Once upon a time. You are a little boy or girl who tended a sheep farm form wolf.\nEveryone call you")
	questions.append("Yeah Your name are … and beloved by the villagers. But you are bored because there are nothing to play in the farm which have only sheeps.So you plan to run around the village While shouting ...")
	questions.append("You shout ... around the village.That annoys the villagers a lot.So they rushed and crunched you until you passed away.")
	questions.append("Once upon a time.You are a little boy or girl who tended a sheep farm form wolf.Everyone call you …\n.Yeah! Your name is … and beloved by the villagers. But you're bored because there's nothing to play in the farm which have only sheeps.So you plan to run around the village\nWhile shouting ...\nYou shout ... around the village.That annoys the villagers a lot.So they rushed and crunched you until you passed away.\nGame over")
	
	
	print(questions)
	print(len(questions))
	print(questions[0])
	print(questions[1])
	print(questions[2])
	print(questions[3])
	
func _on_PlayerInput_focus_entered():
	$PlayerInput.text = ""
	
func _on_PlayerButton_pressed():
	$VBoxContainer/DisplayText.text = questions[0]
	$"PlayerInput".text = pre1
	if pre1 != "ans1":
		$VBoxContainer/DisplayText.text = questions[1]
	