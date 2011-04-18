(*
 * Google Chrome Incognito Launcher
 * by Peter Lucak (pkl2104@columbia.edu)
 *
 * This AppleScript program is used to launch Google Chrome in incognito mode.
 * There are a number of scripts which do the same thing around the internet
 * but most of them only concern when Google Chrome launches, mine does more.
 * It was designed to act exacly as an application should which means
 * that no matter what when you click the application you will be presented
 * with a Google Chrome Incognito window.
 *
 * Here is a rundown of how it works:
 * My script allows a user with a click of a button to always get an incognito window 
 * no matter what the state of the program is.
 * - When an instance of Google Chrome is not running the script simply launches
 *   Google Chrome with an incognito window.
 * - When a instance of Google Chrome is running the script checks to see if 
 *   an incognito window is open and then:
 *      - If an icognito window is open then it merely brings that window to the
 *        the front (if you would like it to open a new tab as well you
 *        uncomment a line below to activate that functionality).
 *      - If an icognito is not open then we open a new one.
 *
 * Enjoy!
 * PS. Also my application does everything completely through AppleScript GUI programming.
 *       It never resorts to running anything on the shell.
 * PPS. Please email me if you have any comments or concerns.
 *)
tell application "Google Chrome"
	if it is running then
		tell application "System Events" to set frontmost of process "Google Chrome" to true -- brings application to front
		set theIncognitoWindow to null
		repeat with theCurrentWindow in windows
			if mode of theCurrentWindow is "incognito" then
				set theIncognitoWindow to theCurrentWindow
				exit repeat
			end if
		end repeat
		if theIncognitoWindow is null then
			make new window with properties {mode:"incognito"}
		else
			-- uncomment the below code to make new tab in the incognito when it brought to front
			-- make new tab at end of tabs of theIncognitoWindow
			set visible of theIncognitoWindow to true
		end if
	else
		launch application "Google Chrome"
		close every window
		make new window with properties {mode:"incognito"}
		tell application "System Events" to set frontmost of process "Google Chrome" to true
	end if
end tell
