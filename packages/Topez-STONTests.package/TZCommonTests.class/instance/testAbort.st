testing
testAbort
    | result x |
    self topez commandOptions level: 0.
    result := self topez abort.
    result displayOptions: (TZTopezOptions new displayOops: false).
    self
        assert:
            (x := result printString)
                =
                    'System
'