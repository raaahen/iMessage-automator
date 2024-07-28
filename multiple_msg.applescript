on run {input, parameters}
    set recipientList to item 1 of input
    set filePath to item 2 of input
    set targetMessage to item 3 of input --     
    
    tell application "Messages"
        set targetService to 1st service whose service type = iMessage
        
        repeat with recipient in recipientList
            set recipient to text of (recipient as text)
            set targetBuddy to buddy recipient of targetService
            
            --   
            send targetMessage to targetBuddy
            
            --  
            send POSIX file filePath to targetBuddy
        end repeat
    end tell
end run


