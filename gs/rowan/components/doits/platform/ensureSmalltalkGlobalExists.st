| assn |
assn := System myUserProfile resolveSymbol: #Smalltalk.
assn isNil ifTrue: [ UserGlobals at: #Smalltalk put: nil ]

