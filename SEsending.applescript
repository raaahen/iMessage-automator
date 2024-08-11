set theImagesAliasList to (choose file of type {"public.audio"} with multiple selections allowed)

set theImagesPosixList to {}
repeat with i from 1 to (count of theImagesAliasList)
	set theItem to item i of theImagesAliasList
	tell application "System Events" to set theItem to (POSIX path of theItem)
	set end of theImagesPosixList to POSIX file theItem
end repeat

tell application "Messages" to activate
tell application "System Events" to tell application process "Messages"
	
	click menu item "New Message" of menu 1 of menu bar item "File" of menu bar 1
	click text field "To:" of scroll area 3 of splitter group 1 of window "Messages"
	keystroke "+79818840510" & return
	
	click text area 1 of scroll area 4 of splitter group 1 of window "Messages"
	keystroke "hi, have new images!"
	
	repeat with theItem in theImagesPosixList
		set the clipboard to theItem
		click menu item "Paste" of menu 1 of menu bar item "Edit" of menu bar 1
		delay 1
	end repeat
	
end tell