as yet unclassified
windowBuilderLookupTestFixture
  "object aspect expected"

  ^ {{(TDObjectNode new).
  #'edit'.
  TDDirectoryNodeClientListElementBuilder}.
  {(TDDirectoryNode new).
  #'edit'.
  TDDirectoryNodeClientListElementBuilder}.
  {(Object new).
  #'edit'.
  TDClientObjectElementBuilder}.
  {(TDScriptLeafNode new).
  #'edit'.
  TDClientScriptElementBuilder}.
  {(TDSmalltalkLeafNode new).
  #'edit'.
  TDClientCodeElementBuilder}.
  {(TDTopezLeafNode new).
  #'edit'.
  TDClientSourceElementBuilder}.
  {(TDTxtLeafNode new).
  #'edit'.
  TDClientTextElementBuilder}}