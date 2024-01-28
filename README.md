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
