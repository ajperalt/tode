as yet unclassified
testclass: classNames
  | suite cl |
  suite := self testSuiteFor: classNames.
  ^ self browseTestSuite: suite