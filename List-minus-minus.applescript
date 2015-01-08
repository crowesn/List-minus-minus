set f to choose file

set allRecords to read f using delimiter return
display dialog "Specify index tag for identifier type in your list: " default answer "."
set indexType to text returned of result

repeat with aRecord in allRecords
  set SearchVar to aRecord
  
  tell application "iiirunner" to activate
  delay 0.1
  tell application "System Events" to tell process "iiirunner"
    keystroke "t" using option down
    delay 1
    keystroke "a"
    delay 1
    keystroke indexType
    delay 0.25
    keystroke SearchVar & return
    delay 2
    
    
    keystroke "u" using option down
    delay 1
    
  end tell
end repeat
display dialog "you're done"
say "you're done"
