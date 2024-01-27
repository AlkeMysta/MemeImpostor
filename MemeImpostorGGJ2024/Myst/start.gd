extends Node2D

var TimerStoryCounter = 0
@onready var NPlayers = 2
@onready var NSpaceDroids = NPlayers + 2



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#$Console/Testo.hide()
	#$Console/TextEdit.show()
	pass
	#Menu
		#Crea Server
		#Join Server
		#Waiting Lobby
	#Intro
		#mostra img Attracco astronave ricambio droidi su base spaziale
		#mostra scritta Descrizione introduttiva
		#nascondi Attracco e Descrizione
		#mostra img Console
	#Game Loop (X=1 to NPlayers volte)
		#Timer Alarm X
		#mostra img  + scritte Routine 
		#Timeout Alarm X
		#nascondi Routine 
		#mostra img + scritte Alarm X + pulsante TuringTest 
		#nascondi img + scritte Alarm X
		#mostra random Meme 1
		#attiva TextEdit per Frase del meme 1
		#salva frasi 1
		#mostra random Meme 2
		#attiva TextEdit per Frase del meme 2
		#salva frasi 2
		#Test Loop (Y=1 to NPlayers volte)
			#mostra pulsanti Voto
			#mostra  random  Meme Y + Frase	Y
			#conteggia voti
			#nascondi
		#conteggio complessivo
		#mostra risultato + img Droide recluso
		#player votato in spectating mode
		#player che continua in Routine mode		
	#End 
		#mostra situazione finale e vincitori



	
func DroidMeme():
# Stonk	
	#Quando compri Bitcoin a 100.000€ e il giorno dopo scende a 10.000€
	#Quando ti laurei in economia e finisci a lavorare in un call center
	#Quando ti metti a dieta e perdi 5 kg in una settimana, ma poi li riprendi in un giorno
# Dodge
	#Quando scopri che il tuo cantante preferito viene a fare un concerto nella tua città
	#	
	#
# Scoiattolo
	#Quando trovi l'ultima carota nel frigo e la rubi al tuo coinquilino
	#Quando sei vegano e ti senti superiore agli altri
	#Quando ti svegli e scopri che hai finito il caffè

	pass
	


func _on_timer_story_timeout():
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
		$StoryText.set_text("Il tuo obiettivo è spacciarti per un droide e rimanere il più possibile a bordo per avere il tempo di sabotare la stazione.")
		$StoryText.show()
	if(TimerStoryCounter==4):	
		$Console.show()
	if(TimerStoryCounter==5):
		$Console/Testo.set_text("DEEPCODE_ANALYSIS_STATUS  { openDeepcodeSettingsCommand, createDCIgnoreCommand } from './utils/vscodeCommandsUtils';   private debouncedCommands: Record<string,_.DebouncedFunc<((...args: any[]) => Promise<any>)>> = {};")
	TimerStoryCounter = TimerStoryCounter + 1
	$TimerStory.start()
	
