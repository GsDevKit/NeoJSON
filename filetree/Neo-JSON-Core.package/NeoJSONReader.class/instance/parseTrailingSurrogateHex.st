parsing
parseTrailingSurrogateHex
  "UTF-16 surrogate pair handling see NeoJSONWriter>>escapeCharacter:
Parse the trailingSurrogate pair."

  | char value |
  (char := readStream next) = $\
    ifFalse: [ self error: 'expected trailing surrogate hex digits' ].
  (char := readStream next) = $u
    ifFalse: [ 
      self
        error:
          'invalid escape character \, expected trailing surrogate hex digits'
            , (String with: char) ].
  value := self parseCharacterHexDigit.
  3 timesRepeat: [ value := (value << 4) + self parseCharacterHexDigit ].
  ^ value
