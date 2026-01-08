private
stringStreamClass
	"Answer the class of the collection used for the stringStream of receiver.
	
	NOTE: It is String, but if receiver's readStream is over 
	another class of String, then this provides compatibility for that."

	^ readStream collectionSpecies