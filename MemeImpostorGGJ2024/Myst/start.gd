extends Node2D

var TimerStoryCounter = 0
var TestIniziato = 0
var PulsXPremuto = 0
var MyTurn = 0
var Pag = 0
var AP=0
@onready var NPlayers = 3
@onready var NDroids = NPlayers + 1
@onready var NMeme = 7

var ActivePlayer= [0,0,0,0,0] 
var ActiveDroid= [1,0,0,0,0,0] 
var Ordine = [0,1,2,3,4,5,6]
	
@onready var InputMeme = PackedStringArray(["", "", ""])
@onready var TestMeme = [
		["","","","","","",""],
		[0,0,0,0,0,0,0],
		["","","","","","",""],
		["","","","","","",""],
		[0,0,0,0,0,0,0]
	]
@onready var DroidMeme = [
		["Stonks",
		"Quando compri Bitcoin a 100.000€ e il giorno dopo scende a 10.000€", 
		"Quando ti laurei in economia e finisci a lavorare in un call center",
		"Quando ti metti a dieta e perdi 5 kg in una settimana, ma poi li riprendi in un giorno"
		], 
		["PepeTheFrog",
		"Quando hai finito il progetto ma il tuo capo lo cambia tutto",
		"Quando il tuo amico ti dice che ha finito le patatine",
		"Quando ti accorgi che hai sbagliato domanda all’esame"	
		],
		["DogeGlasses",
		"Quando vedi il tuo vicino che fa yoga sul balcone",
		"Quando scopri che il tuo cantante preferito viene a fare un concerto nella tua città",
		"Quando sei troppo cool per la scuola"
		],
		["Scoiattolo",
		"Quando trovi l\'ultima carota nel frigo e la rubi al tuo coinquilino",
		"Quando sei vegano e ti senti superiore agli altri",
		"Quando ti svegli e scopri che hai finito il caffè"
		],
		["CryingCat",
		"Quando ti dimentichi di fare i compiti e il professore te li chiede",
		"Quando ti svegli e scopri che il tuo gatto ha vomitato sul tappeto",
		"Quando ordini una pizza e ti portano una senza formaggio"
		],
		["KazooKid",     
		"Quando scopri che domani non c\'è scuola",
		"Quando ti arriva il bonus del governo e ti compri il kazoo d\'oro",
		"Quando ti invitano a una festa e porti il tuo kazoo per animare l\'atmosfera"
		],
		["BarkingDog",
		"Quando il tuo capo ti chiede di lavorare il sabato",
		"Quando senti il tuo vicino suonare la batteria alle 3 di notte",
		"Quando ti rendi conto che hai dimenticato di spegnere il forno"
		],
		
	]
		
		

# Called when the node enters the scene tree for the first time.
func _ready():
	for conta in NPlayers:
		ActivePlayer[conta]=1
		print (ActivePlayer)
	for conta in NDroids:
		ActiveDroid[conta]=1
		print (ActiveDroid)
		
	$TimerStory.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):

	if(TimerStoryCounter==0):	
		$Story.show()
		$StoryText.show()
	if(TimerStoryCounter==1):	
		$StoryText.set_text("La stazione spaziale Controller è completamente gestita da Intelligenze Artificiali che stanno ormai abusando del loro potere sulle telecomunicazioni globali.")
		$StoryText.show()
	if(TimerStoryCounter==2):	
		$StoryText.set_text("Sei riuscit@ ad imbarcarti con una console hackerata sulla navetta che porta i droidi di ricambio.")
		$StoryText.show()
	if(TimerStoryCounter==3):	
		$StoryText.set_text("Il tuo obiettivo è spacciarti per un droide e rimanere il più possibile a bordo e prendere il controllo della stazione prima degli altri umani infiltrati.")
		$StoryText.show()
	if(TimerStoryCounter==4):	
		$Console.show()
	if(TimerStoryCounter==5):
		$Console/Testo.set_text("DEEPCODE_ANALYSIS_STATUS  { openDeepcodeSettingsCommand, createDCIgnoreCommand } from './utils/vscodeCommandsUtils';   private debouncedCommands: Record<string,_.DebouncedFunc<((...args: any[]) => Promise<any>)>> = {};")
	if(TimerStoryCounter==6):
		$Console/Titolo.set_text("Allerta - Incoerenza rilevata")
		$Console/Testo.set_text("Il peso della stazione spaziale dopo il ricambio droni gestionali è superiore al previsto di kg 183.46")
	if(TimerStoryCounter==7):
		$Console/Testo.set_text("Numero delle Droid Consoles superiore al previsto di 3 elementi")
	if(TimerStoryCounter==8):	
		$Console/Titolo.set_text("Rilevamento infiltrati - Test I.A.")
		$Console/Testo.set_text("Sospetta infiltrazione di esseri umani all\'interno della stazione. Si procede alla verifica delle I.A. presenti")
	if(TimerStoryCounter==9):
		$Console/Testo.set_text("Premi il pulsante Enter per iniziare il Meme Touring Test. Scrivi per ogni meme una frase divertente da abbinare")
		$Console/Pulsante.visible=true
		$Skip.hide()


func _on_timer_story_timeout():
	TimerStoryCounter = TimerStoryCounter + 1
		
func _on_pulsante_pressed():
	if (TestIniziato == 0):
		$Console/Titolo.set_text("Droide MCX01 è il tuo turno - premi Enter")
		$Console/Pic.hide()
		$Console/Testo.hide()
	if (TestIniziato == 1):
		$Console/Stonks.show()
		$Console/MemeTextInput.show()
	if (TestIniziato == 2):
		$Console/Titolo.set_text("Droide MCX02 è il tuo turno - premi Enter")
		$Console/Stonks.hide()
		InputMeme[0]=$Console/MemeTextInput.text
		print (InputMeme)
		$Console/MemeTextInput.set_text(" ")
	if (TestIniziato == 3):
		$Console/PepeTheFrog.show()
		$Console/MemeTextInput.show()
	if (TestIniziato == 4):
		$Console/Titolo.set_text("Droide MCX03 è il tuo turno - premi Enter")
		$Console/PepeTheFrog.hide()
		InputMeme[1]=$Console/MemeTextInput.text
		print (InputMeme)
		$Console/MemeTextInput.set_text(" ")
	if (TestIniziato == 5):
		$Console/CryingCat.show()
		$Console/MemeTextInput.show()
	if (TestIniziato == 6):
		$Console/Titolo.set_text("Meme Turing Test - Prima fase completata")
		$Console/CryingCat.hide()
		InputMeme[2]=$Console/MemeTextInput.text
		print (InputMeme)
		$Console/MemeTextInput.set_text(" ")
		$Console/MemeTextInput.hide()
		$Console/Testo.set_text("Tutti i meme sono stati creati, ora si passerà alle votazioni - Premi Enter")
		$Console/Testo.show()
	if (TestIniziato == 7):
		#TestIniziato = -1
		$Console/Pulsante.hide()
		Votazione()
		
	TestIniziato = TestIniziato+1



 
func Votazione():
	var Frase=""
	var AT=0
	for AX in NPlayers:
		AT=AT + ActivePlayer[AX]
	for AD in NDroids:
		AT=AD + ActiveDroid[AD]
	
	Ordine.shuffle()
	print(Ordine)
	
	var TMC=0
	for AX in NPlayers:
		if (ActivePlayer[AX]==1):
			TestMeme[0][TMC]="U"
			TestMeme[1][TMC]=AX
			TestMeme[2][TMC]=DroidMeme[AX][0]
			TestMeme[3][TMC]=InputMeme[AX]
			TestMeme[4][TMC]=0
			TMC=TMC+1
	for AD in NDroids:
		if (ActiveDroid[AD]==1):
			TestMeme[0][TMC]="D"
			TestMeme[1][TMC]=AD
			TestMeme[2][TMC]=DroidMeme[NPlayers+AD][0]
			TestMeme[3][TMC]=DroidMeme[NPlayers+AD][randi_range(1,3)]
			TestMeme[4][TMC]=0
			TMC=TMC+1
	
	print (TestMeme)
	for AX in NPlayers:
		if (ActivePlayer[AX]==1 and PulsXPremuto==0 and MyTurn==0):
			print ("debug2")
			MyTurn=1
			AP=AX
			Visualizza(AX)
			
			#TestMeme[4][TMC]= voto

func Visualizza(AX):
			$Console/FrecciaDX.visible=true
			$Console/FrecciaSX.visible=true
			$Console/PulsX.visible=true
			$Console/Titolo.set_text("MCX0{id} è il tuo turno: scegli il meme scritto da un umano e premi X".format({"id": AX+1}))
			$Console/Testo.set_text(TestMeme[3][Ordine[Pag]])
			$Console/Stonks.hide()
			$Console/PepeTheFrog.hide()
			$Console/DogeGlasses.hide()
			$Console/Scoiattolo.hide()
			$Console/CryingCat.hide()
			$Console/KazooKid.hide()
			$Console/BarkingDog.hide()
							
			if (TestMeme[2][Ordine[Pag]]=="Stonks"): 
				$Console/Stonks.show()
				print ("debug Stonks")
			if (TestMeme[2][Ordine[Pag]]=="PepeTheFrog"): 
				$Console/PepeTheFrog.show()
				print ("debug PepeTheFrog")
			if (TestMeme[2][Ordine[Pag]]=="DogeGlasses"): 
				$Console/DogeGlasses.show()
				print ("debug DogeGlasses")
			if (TestMeme[2][Ordine[Pag]]=="Scoiattolo"): 
				$Console/Scoiattolo.show()
				print ("debug Scoiattolo")
			if (TestMeme[2][Ordine[Pag]]=="CryingCat"): 
				$Console/CryingCat.show()
				print ("debug CryingCat")
			if (TestMeme[2][Ordine[Pag]]=="KazooKid"): 
				$Console/KazooKid.show()
				print ("debug KazooKid")
			if (TestMeme[2][Ordine[Pag]]=="BarkingDog"): 
				$Console/BarkingDog.show()
				print ("debug BarkingDog")
			
			print(TestMeme[2][Ordine[Pag]])

				
				

func _on_puls_x_pressed():
	PulsXPremuto=1
	MyTurn=0
	print(PulsXPremuto)
	$Console/Titolo.set_text("Grazie per aver votato!")

func _on_freccia_dx_pressed():
	if (Pag<6):
		Pag=Pag+1
	else:
		Pag=0
	Visualizza(AP)

func _on_freccia_sx_pressed():
	if (Pag>0):
		Pag=Pag-1
	else:
		Pag=6
	Visualizza(AP)

func _on_skip_pressed():
	TimerStoryCounter=TimerStoryCounter+1
	print("debug Skip")
