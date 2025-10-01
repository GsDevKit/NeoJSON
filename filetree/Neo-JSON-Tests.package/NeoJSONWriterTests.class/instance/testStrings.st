testing
testStrings
  | writer |
  writer := [ :object | String streamContents: [ :stream | (NeoJSONWriter on: stream) nextPut: object ] ].
  self assert: (writer value: 'foo') equals: '"foo"'.
  self assert: (writer value: 'Foo BAR') equals: '"Foo BAR"'.
  self assert: (writer value: '') equals: '""'.
  self assert: (writer value: 'élève français') equals: '"élève français"'.
  self
    assert:
      (writer
        value:
          (String
            withAll:
              {$".
              $\.
              $/.
              (Character tab).
              (Character cr).
              (Character lf).
              (Character newPage).
              (Character backspace)}))
    equals: '"\"\\/\t\r\n\f\b"'.
  self
    assert:
      (writer
        value:
          'Ð¯ Ð¼Ð¾Ð¶Ñ ÑÑÑÐ¸ ÑÐºÐ»Ð¾, Ñ Ð²Ð¾Ð½Ð¾ Ð¼ÐµÐ½Ñ Ð½Ðµ Ð·Ð°ÑÐºÐ¾Ð´Ð¸ÑÑ.'
            decodeFromUTF8)
    equals:
      '"'
        ,
          'Ð¯ Ð¼Ð¾Ð¶Ñ ÑÑÑÐ¸ ÑÐºÐ»Ð¾, Ñ Ð²Ð¾Ð½Ð¾ Ð¼ÐµÐ½Ñ Ð½Ðµ Ð·Ð°ÑÐºÐ¾Ð´Ð¸ÑÑ.'
            decodeFromUTF8
        , '"'.
  self
    assert: (writer value: 'ð£' decodeFromUTF8)
    equals: '"' , 'ð£' decodeFromUTF8 , '"'
