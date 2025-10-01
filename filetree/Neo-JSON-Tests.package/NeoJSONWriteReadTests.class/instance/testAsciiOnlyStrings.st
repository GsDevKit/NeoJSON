testing
testAsciiOnlyStrings
  | objects |
  objects := {'foo'.
  'Foo BAR'.
  ''.
  '	\\'''.
  'élève en Français'.
  ('Ð¯ Ð¼Ð¾Ð¶Ñ ÑÑÑÐ¸ ÑÐºÐ»Ð¾, Ñ Ð²Ð¾Ð½Ð¾ Ð¼ÐµÐ½Ñ Ð½Ðµ Ð·Ð°ÑÐºÐ¾Ð´Ð¸ÑÑ.'
    decodeFromUTF8).
  ('ð£' decodeFromUTF8)}.
  self assert: (self writeReadAsciiOnly: objects) equals: objects
