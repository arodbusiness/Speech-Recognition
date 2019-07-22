#SingleInstance, Force
#Include Speech Recognition.ahk

PhraseList := ["Miner auto click on", "Miner auto click off", "Miner auto click toggle"]

s := new SpeechRecognizer
s.Phrases(PhraseList)

oVoice := ComObjCreate("SAPI.SpVoice")
Voices := oVoice.GetVoices
oVoice.Voice := Voices.Item(1)
Loop
{

	Text := s.Prompt()
	
	
	if (Text = PhraseList[1])
	{
		oVoice.Speak("Miner AutoClick ON")
	
	
	
	
	}
	else if (Text = PhraseList[2])
	{
		oVoice.Speak("Miner AutoClick OFF")
	
	}
	else if (Text = PhraseList.Item[3])
	{
		oVoice.Speak("Miner AutoClick Toggled")
	
	}
	else
	{
		oVoice.Speak("Phrase not recognizied")
		
	}
	
	
	Sleep, 1000
}
