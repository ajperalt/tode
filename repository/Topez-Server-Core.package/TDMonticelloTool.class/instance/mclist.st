as yet unclassified
mclist
  "mc list <regex-pkg-pattern> "

  | pattern label block |
  label := 'Working Copies'.
  pattern := ''.
  tokens size > 1
    ifTrue: [ 
      pattern := tokens at: 2.
      label := 'Packages matching: ' , pattern printString ].
  block := [ self mclist: pattern ].
  self mcBrowseWorkingCopies: block label: label.
  ^ block value