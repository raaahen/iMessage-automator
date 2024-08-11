--set theSMS to "Hi, have new PDF !"
set theAliasMp3 to choose file of type {"public.audio"}
set theMp3 to POSIX path of theAliasMp3

tell application "Messages"
	set theService to first service whose service type = iMessage
	set theBuddy to buddy "+7 (981) 884-05-10" of theService
	send file theMp3 to theBuddy -- or, send theSMS to theBuddy
end tell
