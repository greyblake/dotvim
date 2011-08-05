
" Vim syntax file
" Language:	Cognos Data Manager (CDM)
" Maintainer:	Sergey Potapov <blake131313  at gmail.com>
" Last Change:	2011-08-05

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore


" Keyword
syn keyword cdmSpecial  false true

" functions
syn keyword cdmFunction    SetTimeZone ToChar ToDate ToDouble ToHex ToInteger ToIntervalDS ToIntervalYM ToNumber ToTime ToTimeZone
syn keyword cdmFunction    ArrayAddItem ArrayClear ArrayDeleteItem ArrayItem ArrayModifyItem ArraySearch ArraySize ArraySort Audit AuditTrail DBMS DBName Delay Driver Exit FileCheck FileClose FileFromParts FileFullPath FileList FileOpen FileRead FileWrite GetDirectory GetFileName LogMsg Lookup MessageCode MessageCount MessageSeverity MessageText NodeAuditID NodeStatus OpSys RowNum RowsInserted RowsUpdated SendAlert SendMail Sql System UUID VariableInfo
syn keyword cdmFunction    SQLPrepare SQLGetLastError SQLColumnCount SQLColumnName SQLColumnNo SQLBind SQLFetch SQLData SQLClose
syn keyword cdmFunction    Choose If IfNull
syn keyword cdmFunction    Abs Band Ceil Cos Exp Floor Ln Log Mod Power Rand Round Sign Sin Sqrt Tan Trunc
syn keyword cdmFunction    IsAncestor Level Member TypeInfo Unmatched
syn keyword cdmFunction    Char Checksum Collapse Concat ConcatSep CountStr ExtractStr I18NConvert I18NString Initcap InStr IsAlpha IsAlphaNumeric IsDigit IsFloat IsInteger IsLower IsNumeric IsUpper Left Length Lower LPad LTrim Replace Right RPad RTrim Soundex SubStr Translate Trim Upper
syn keyword cdmFunction    AddDaysToInterval AddMonthsToDate AddMonthsToInterval AddSecondsToInterval AddToDate AddYearsToDate AddYearsToInterval DaysBetween FirstOfMonth IsLeapYear IsLeapYearDay IsValidDate IsValidIntervalDS IsValidIntervalYM IsValidTime LastOfMonth MonthsBetween SecondsBetween SysDate

" Variables
syn match cdmVariable "\$\w*"

" Strings and characters:
syn region cdmString		start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region cdmString		start=+'+  skip=+\\\\\|\\'+  end=+'+

" Numbers:
syn match cdmNumber		"-\=\<\d*\.\=[0-9_]\>"

" Comments:
syn match cdmComment	"//.*$" contains=cdmTodo
syn sync ccomment cdmComment

" Conditions

" Statements
syn keyword cdmStatement    Return

" Operators
syn keyword cdmOperator     is in between like not and or
syn match   cdmOperator     "\%(:=\|=\|!=\|<>\|>=\|>\|<=\|<\)"
syn match   cdmOperator     "\%(&\|-\|+\|-\|*\|/\)"


" Constants
syn keyword cdmConstant     null
" Todo.
syn keyword cdmTodo contained TODO FIXME XXX DEBUG NOTE

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_cdm_syn_inits")
  if version < 508
    let did_cdm_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink cdmNumber	Number
  HiLink cdmSpecial	Special
  HiLink cdmString	String
  HiLink cdmTodo	Todo
  HiLink cdmVariable    PreProc
  HiLink cdmFunction    Function
  HiLink cdmStatement   Statement
  HiLink cdmOperator    Operator
  HiLink cdmConstant    Constant
  HiLink cdmComment	Comment

  
  delcommand HiLink
endif

let b:current_syntax = "cognos"

" vim: ts=8





= != <> >= > <= <  
& - + - * /
   
   

        

