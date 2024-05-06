mode: sleep
not mode: sleep
not speech.engine: dragon
-
# BEGIN MODIFICATION
^talon wake from sleep$: speech.enable()
^talon sleep$: speech.disable()
# END MODIFICATION
