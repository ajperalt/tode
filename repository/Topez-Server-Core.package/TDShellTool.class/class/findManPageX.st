as yet unclassified
findManPageX
  ^ 'NAME
  find - search for matching classes and methods (class, method, sender, rmethod, rsender, source, versions)

SYNOPSIS
  find [--scriptPath[=<tode-path>]] find-command [<find-arguments>]

  find method <selector> 
  find method --spec <method-spec> 
  find method --regex <selector-pattern> 
  ----
  find method [#]<selector>  
  find rmethod <regex-pattern> 

  find [--scriptPath=<tode-path>] sender [--pure|[--regex|-r]] <selector>
  ----
  find [--scriptPath=<tode-path>] psender [#]<selector>
  find [--scriptPath=<tode-path>] rsender <regex-pattern>
  find [--scriptPath=<tode-path>] sender [#]<selector>

  find [--scriptPath=<tode-path>] source <regex-pattern>
  find [--scriptPath=<tode-path>] source --exact <source-string>
  ----
  find [--scriptPath=<tode-path>] source <regex-pattern>

  find categories
  find category <regex-pattern>
  find class <regex-pattern>
  find hierarchy <class-name>
  find methods <method-spec-1> <method-spec-2>
  find package <package-name>
  find project <project-name>
  find [--scriptPath=<tode-path>] references <variableOrGlobalNameOrPathRef>
  find versions <method-spec>

DESCRIPTION
  <method-spec> :: method specification
    methodSelector
    className>>methodSelector
    className class>>methodSelector

  <regex-pattern> :: regular expression pattern

  <selector> :: method selector (use `#` in front of selector to disambiguate from shell operator (`>`)).
    yourself
    at:put:
    #>

  <variableOrGlobalNameOrPathRef> :: global name
    <identifier>
    @<path>  
'