nested dictionaries
at: firstKey at: secondKey put: value
	"Store value under secondKey in nested object under firstKey, create new level when needed"

	^ self atPath: { firstKey. secondKey } put: value