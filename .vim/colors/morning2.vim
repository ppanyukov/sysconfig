" Vim color file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2006 Apr 15

" MODIFIED BY P.PANYUKOV TO BE MORE SUBTLE
"
" This color scheme uses a light grey background.

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "morning2"

hi Normal ctermfg=Black ctermbg=LightGrey guifg=Black guibg=grey90

" Groups used in the 'highlight' and 'guicursor' options default value.
hi SpecialKey      term=bold ctermfg=4 guifg=Blue
hi NonText         term=bold ctermfg=12 gui=bold guifg=Blue guibg=grey80
hi Directory       term=bold ctermfg=4 guifg=Blue
hi ErrorMsg        term=standout ctermfg=15 ctermbg=1 guifg=White guibg=Red
hi IncSearch       term=reverse cterm=reverse gui=reverse
hi Search          term=reverse ctermbg=11 guibg=Yellow
hi MoreMsg         term=bold ctermfg=2 gui=bold guifg=SeaGreen
hi ModeMsg         term=bold cterm=bold gui=bold
hi LineNr          term=underline ctermfg=130 guifg=Brown
hi Question        term=standout ctermfg=2 gui=bold guifg=SeaGreen
hi StatusLine      term=bold,reverse cterm=bold,reverse gui=bold,reverse
hi StatusLineNC    term=reverse cterm=reverse gui=reverse
hi VertSplit       term=reverse cterm=reverse gui=reverse
hi Title           term=bold cterm=bold ctermfg=Blue gui=bold guifg=DarkBlue
hi Visual          term=reverse ctermbg=248 guibg=grey80
hi VisualNOS       term=bold,underline cterm=bold,underline gui=bold,underline
hi WarningMsg      term=standout ctermfg=1 guifg=Red
hi WildMenu        term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi Folded          term=standout ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=LightGrey
hi FoldColumn      term=standout ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=Grey
hi DiffAdd         term=bold ctermbg=81 guibg=LightBlue
hi DiffChange      term=bold ctermbg=225 guibg=LightMagenta
hi DiffDelete      term=bold ctermfg=12 ctermbg=159 gui=bold guifg=Blue guibg=LightCyan
hi DiffText        term=reverse cterm=bold ctermbg=9 gui=bold guibg=Red
hi SignColumn      term=standout ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=Grey
hi Conceal         ctermfg=7 ctermbg=242 guifg=LightGrey guibg=DarkGrey
hi SpellBad        term=reverse ctermbg=224 gui=undercurl guisp=Red
hi SpellCap        term=reverse ctermbg=81 gui=undercurl guisp=Blue
hi SpellRare       term=reverse ctermbg=225 gui=undercurl guisp=Magenta
hi SpellLocal      term=underline ctermbg=14 gui=undercurl guisp=DarkCyan
hi Pmenu           ctermbg=225 guibg=LightMagenta
hi PmenuSel        ctermbg=7 guibg=Grey
hi PmenuSbar       ctermbg=248 guibg=Grey
hi PmenuThumb      cterm=reverse gui=reverse
hi TabLine         term=underline cterm=underline ctermfg=0 ctermbg=7 gui=underline guibg=LightGrey
hi TabLineSel      term=bold cterm=bold gui=bold
hi TabLineFill     term=reverse cterm=reverse gui=reverse
hi CursorColumn    term=reverse ctermbg=248 guibg=grey80
hi CursorLine      term=underline cterm=underline guibg=grey80
hi ColorColumn     term=reverse ctermbg=224 guibg=LightRed
hi Cursor          guibg=Black
hi lCursor         guibg=Cyan
hi MatchParen      term=reverse ctermbg=14 guibg=Cyan
hi Normal          ctermfg=0 ctermbg=7 guifg=Black guibg=grey90
hi Comment         term=bold cterm=italic ctermfg=green gui=italic guifg=Green
hi Constant        term=underline ctermfg=1 guifg=Magenta guibg=grey95
" Same as Title, seems to work fine for markdown headings like "# Title"
hi Special         term=bold cterm=bold ctermfg=Blue gui=bold guifg=DarkBlue
hi Identifier      term=underline cterm=bold ctermfg=0 guifg=DarkCyan
hi Statement       term=bold cterm=bold ctermfg=0 gui=bold guifg=Black
hi PreProc         term=underline ctermfg=5 guifg=Purple
hi Type            term=underline ctermfg=0 gui=bold guifg=Black
hi Underlined      term=underline cterm=underline ctermfg=5 gui=underline guifg=SlateBlue
hi Ignore          ctermfg=7 guifg=grey90
hi Error           term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red
hi Todo            term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow
hi  link     String          Constant
hi  link     Character       Constant
hi  link     Number          Constant
hi  link     Boolean         Constant
hi  link     Float           Number
hi  link     Function        Identifier
hi  link     Conditional     Statement
hi  link     Repeat          Statement
hi  link     Label           Statement
hi  link     Operator        Statement
hi  link     Keyword         Statement
hi  link     Exception       Statement
hi  link     Include         PreProc
hi  link     Define          PreProc
hi  link     Macro           PreProc
hi  link     PreCondit       PreProc
hi  link     StorageClass    Type
hi  link     Structure       Type
hi  link     Typedef         Type
hi  link     Tag             Special
hi  link     SpecialChar     Special
hi  link     Delimiter       Special
hi  link     SpecialComment  Special
hi  link     Debug           Special
hi  link     vimTodo         Todo
hi  link     vimCommand      Statement
hi  link     vimOption       PreProc
hi  link     vimErrSetting   vimError
hi  link     vimAutoEvent    Type
hi  link     vimGroup        Type
hi  link     vimHLGroup      vimGroup
hi  link     vimFuncName     Function
hi  link     vimNumber       Number
hi  link     vimAddress      vimMark
hi  link     vimAutoCmd      vimCommand
hi vimExtCmd       NONE
hi vimFilter       NONE
hi  link     vimLet          vimCommand
hi  link     vimMap          vimCommand
hi  link     vimMark         Number
hi vimSet          NONE
hi  link     vimSyntax       vimCommand
hi vimUserCmd      NONE
hi vimCmdSep       NONE
hi vimIsCommand    NONE
hi vimVar          NONE
hi vimFBVar        NONE
hi  link     vimInsert       vimString
hi  link     vimBehaveModel  vimBehave
hi  link     vimBehaveError  vimError
hi  link     vimBehave       vimCommand
hi  link     vimFTCmd        vimCommand
hi  link     vimFTOption     vimSynType
hi  link     vimFTError      vimError
hi vimFiletype     NONE
hi vimFunction     NONE
hi  link     vimFunctionError  vimError
hi  link     vimLineComment  vimComment
hi  link     vimSpecFile     Identifier
hi  link     vimOper         Operator
hi vimOperParen    NONE
hi  link     vimComment      Comment
hi  link     vimString       String
hi  link     vimSubst        vimCommand
hi  link     vimRegister     SpecialChar
hi  link     vimCmplxRepeat  SpecialChar
hi vimRegion       NONE
hi vimSynLine      NONE
hi  link     vimNotation     Special
hi  link     vimCtrlChar     SpecialChar
hi  link     vimFuncVar      Identifier
hi  link     vimContinue     Special
hi  link     vimAugroupKey   vimCommand
hi vimAugroup      NONE
hi vimAugroupError  NONE
hi  link     vimFunc         vimError
hi  link     vimParenSep     Delimiter
hi  link     vimSep          Delimiter
hi  link     vimOperError    Error
hi  link     vimFuncKey      vimCommand
hi  link     vimFuncSID      Special
hi  link     vimAbb          vimCommand
hi vimEcho         NONE
hi  link     vimEchoHL       vimCommand
hi vimExecute      NONE
hi vimIf           NONE
hi  link     vimHighlight    vimCommand
hi  link     vimNorm         vimCommand
hi  link     vimNotFunc      vimCommand
hi  link     vimUserCommand  vimCommand
hi vimFuncBody     NONE
hi vimFuncBlank    NONE
hi  link     vimPattern      Type
hi  link     vimSpecFileMod  vimSpecFile
hi vimEscapeBrace  NONE
hi vimSetEqual     NONE
hi  link     vimSetString    vimString
hi vimSubstRep     NONE
hi vimSubstRange   NONE
hi  link     vimUserAttrb    vimSpecial
hi  link     vimUserAttrbKey  vimOption
hi  link     vimUserAttrbCmplt  vimSpecial
hi  link     vimUserCmdError  Error
hi  link     vimUserAttrbCmpltFunc  Special
hi  link     vimCommentString  vimString
hi  link     vimEnvvar       PreProc
hi  link     vimPatSepErr    vimPatSep
hi  link     vimPatSep       SpecialChar
hi  link     vimPatSepZ      vimPatSep
hi  link     vimPatSepZone   vimString
hi  link     vimPatSepR      vimPatSep
hi vimPatRegion    NONE
hi  link     vimNotPatSep    vimString
hi  link     vimStringCont   vimString
hi  link     vimSubstTwoBS   vimString
hi  link     vimSubstSubstr  SpecialChar
hi vimCollection   NONE
hi vimSubstPat     NONE
hi  link     vimSubst1       vimSubst
hi  link     vimSubstDelim   Delimiter
hi vimSubstRep4    NONE
hi  link     vimSubstFlagErr  vimError
hi vimCollClass    NONE
hi  link     vimCollClassErr  vimError
hi  link     vimSubstFlags   Special
hi  link     vimMarkNumber   vimNumber
hi  link     vimPlainMark    vimMark
hi  link     vimPlainRegister  vimRegister
hi  link     vimSetMod       vimOption
hi  link     vimSetSep       Statement
hi  link     vimMapMod       vimBracket
hi vimMapLhs       NONE
hi vimAutoCmdSpace  NONE
hi vimAutoEventList  NONE
hi vimAutoCmdSfxList  NONE
hi  link     vimEchoHLNone   vimGroup
hi  link     vimMapBang      vimCommand
hi  link     vimUnmap        vimMap
hi vimMapRhs       NONE
hi  link     vimMapModKey    vimFuncSID
hi  link     vimMapModErr    vimError
hi vimMapRhsExtend  NONE
hi vimMenuBang     NONE
hi vimMenuPriority  NONE
hi  link     vimMenuName     PreProc
hi  link     vimMenuMod      vimMapMod
hi  link     vimMenuNameMore  vimMenuName
hi vimMenuMap      NONE
hi vimMenuRhs      NONE
hi  link     vimBracket      Delimiter
hi  link     vimUserFunc     Normal
hi  link     vimElseIfErr    Error
hi  link     vimBufnrWarn    vimWarn
hi vimNormCmds     NONE
hi  link     vimGroupSpecial  Special
hi vimGroupList    NONE
hi  link     vimSynError     Error
hi  link     vimSynContains  vimSynOption
hi  link     vimSynKeyContainedin  vimSynContains
hi  link     vimSynNextgroup  vimSynOption
hi  link     vimSynType      vimSpecial
hi vimAuSyntax     NONE
hi  link     vimSynCase      Type
hi  link     vimSynCaseError  vimError
hi vimClusterName  NONE
hi vimGroupName    NONE
hi  link     vimGroupAdd     vimSynOption
hi  link     vimGroupRem     vimSynOption
hi  link     vimSynKeyOpt    vimSynOption
hi vimSynKeyRegion  NONE
hi  link     vimMtchComment  vimComment
hi  link     vimSynMtchOpt   vimSynOption
hi  link     vimSynRegPat    vimString
hi vimSynMatchRegion  NONE
hi VimSynMtchCchar  NONE
hi  link     vimSynPatRange  vimString
hi  link     vimSynNotPatRange  vimSynRegPat
hi  link     vimSynRegOpt    vimSynOption
hi  link     vimSynReg       Type
hi  link     vimSynMtchGrp   vimSynOption
hi vimSynRegion    NONE
hi vimSynPatMod    NONE
hi  link     vimSyncC        Type
hi vimSyncLines    NONE
hi vimSyncMatch    NONE
hi  link     vimSyncError    Error
hi vimSyncLinebreak  NONE
hi vimSyncLinecont  NONE
hi vimSyncRegion   NONE
hi  link     vimSyncGroupName  vimGroupName
hi  link     vimSyncKey      Type
hi  link     vimSyncGroup    vimGroupName
hi  link     vimSyncNone     Type
hi vimHiLink       NONE
hi vimHiClear      NONE
hi vimHiKeyList    NONE
hi vimHiBang       NONE
hi  link     vimHiGroup      vimGroupName
hi  link     vimHiAttrib     PreProc
hi  link     vimFgBgAttrib   vimHiAttrib
hi  link     vimHiAttribList  vimError
hi vimHiCtermColor  NONE
hi vimHiFontname   NONE
hi vimHiGuiFontname  NONE
hi  link     vimHiGuiRgb     vimNumber
hi  link     vimHiCtermError  vimError
hi  link     vimHiTerm       Type
hi  link     vimHiCTerm      vimHiTerm
hi  link     vimHiStartStop  vimHiTerm
hi  link     vimHiCtermFgBg  vimHiTerm
hi  link     vimHiGui        vimHiTerm
hi  link     vimHiGuiFont    vimHiTerm
hi  link     vimHiGuiFgBg    vimHiTerm
hi  link     vimHiKeyError   vimError
hi vimHiTermcap    NONE
hi  link     vimCommentTitle  PreProc
hi vimCommentTitleLeader  NONE
hi  link     vimSearchDelim  Statement
hi  link     vimSearch       vimString
hi vimGlobal       NONE
hi  link     luaTodo         Todo
hi  link     luaComment      Comment
hi luaInnerComment  NONE
hi  link     luaError        Error
hi  link     luaSpecial      SpecialChar
hi  link     luaCond         Conditional
hi luaCondElseif   NONE
hi luaCondEnd      NONE
hi luaCondStart    NONE
hi luaBlock        NONE
hi luaRepeatBlock  NONE
hi  link     luaRepeat       Repeat
hi  link     luaStatement    Statement
hi luaParen        NONE
hi  link     luaFunction     Function
hi luaFunctionBlock  NONE
hi  link     luaOperator     Operator
hi  link     luaConstant     Constant
hi  link     luaString2      String
hi  link     luaString       String
hi  link     luaNumber       Number
hi  link     luaFloat        Float
hi  link     luaTable        Structure
hi luaTableBlock   NONE
hi  link     luaFunc         Identifier
hi  link     vimScriptDelim  Comment
hi vimLuaRegion    NONE
hi  link     perlTodo        Todo
hi  link     perlPOD         perlComment
hi perlGenericBlock  NONE
hi  link     perlConditional  Conditional
hi  link     perlElseIfError  Error
hi  link     perlRepeat      Repeat
hi  link     perlOperator    Operator
hi  link     perlControl     PreProc
hi  link     perlStatementStorage  perlStatement
hi  link     perlStatementControl  perlStatement
hi  link     perlStatementScalar  perlStatement
hi  link     perlStatementRegexp  perlStatement
hi  link     perlStatementNumeric  perlStatement
hi  link     perlStatementList  perlStatement
hi  link     perlStatementHash  perlStatement
hi  link     perlStatementIOfunc  perlStatement
hi perlFiledescStatementNocomma  NONE
hi  link     perlStatementFiledesc  perlStatement
hi perlFiledescStatementComma  NONE
hi  link     perlStatementVector  perlStatement
hi  link     perlStatementFiles  perlStatement
hi  link     perlStatementFlow  perlStatement
hi  link     perlStatementInclude  perlStatement
hi  link     perlStatementProc  perlStatement
hi  link     perlStatementSocket  perlStatement
hi  link     perlStatementIPC  perlStatement
hi  link     perlStatementNetwork  perlStatement
hi  link     perlStatementPword  perlStatement
hi  link     perlStatementTime  perlStatement
hi  link     perlStatementMisc  perlStatement
hi  link     perlStatementIndirObj  perlStatement
hi perlStatementIndirObjWrap  NONE
hi  link     perlLabel       Label
hi  link     perlVarPlain    perlIdentifier
hi  link     perlVarNotInMatches  perlIdentifier
hi  link     perlVarSlash    perlIdentifier
hi  link     perlPackageRef  perlType
hi perlVarMember   NONE
hi  link     perlVarSimpleMember  perlIdentifier
hi  link     perlMethod      perlIdentifier
hi  link     perlVarPlain2   perlIdentifier
hi  link     perlFunctionName  perlIdentifier
hi perlVarBlock    NONE
hi perlVarBlock2   NONE
hi  link     perlShellCommand  perlString
hi  link     perlFloat       Float
hi  link     perlNumber      Number
hi  link     perlStringUnexpanded  perlString
hi  link     perlString      String
hi  link     perlQQ          perlString
hi  link     perlArrow       perlIdentifier
hi  link     perlVarSimpleMemberName  perlString
hi perlPackageConst  NONE
hi  link     perlFiledescRead  perlIdentifier
hi  link     perlFiledescStatement  perlIdentifier
hi  link     perlSpecialString  perlSpecial
hi NONE            NONE
hi perlSpecialStringU2  NONE
hi  link     perlSpecialStringU  perlSpecial
hi  link     perlSpecialMatch  perlSpecial
hi  link     perlNotEmptyLine  Error
hi  link     perlMatchStartEnd  perlStatement
hi  link     perlVStringV    perlStringStartEnd
hi perlParensSQ    NONE
hi perlBracketsSQ  NONE
hi perlBracesSQ    NONE
hi perlAnglesSQ    NONE
hi perlParensDQ    NONE
hi perlBracketsDQ  NONE
hi perlBracesDQ    NONE
hi perlAnglesDQ    NONE
hi  link     perlMatch       perlString
hi  link     perlComment     Comment
hi  link     perlSubstitutionGQQ  perlString
hi  link     perlSubstitutionSQ  perlString
hi  link     perlTranslationGQ  perlString
hi  link     perlStringStartEnd  perlString
hi  link     perlHereDoc     perlString
hi perlAutoload    NONE
hi  link     perlStatementPackage  perlStatement
hi  link     perlPackageDecl  perlType
hi  link     perlSubError    Error
hi  link     perlSubAttributesCont  perlSubAttributes
hi  link     perlSubAttributes  PreProc
hi  link     perlSubPrototypeError  Error
hi  link     perlSubPrototype  Type
hi  link     perlSubName     Function
hi  link     perlFunction    Keyword
hi  link     perlFunctionPRef  perlType
hi  link     perlSharpBang   PreProc
hi  link     perlFormatName  perlIdentifier
hi  link     perlFormatField  perlString
hi perlFormat      NONE
hi  link     perlDATA        perlComment
hi  link     perlInclude     Include
hi  link     perlSpecial     Special
hi  link     perlCharacter   Character
hi  link     perlType        Type
hi  link     perlIdentifier  Identifier
hi  link     perlStatement   Statement
hi  link     perlList        perlStatement
hi  link     perlMisc        perlStatement
hi  link     perlStorageClass  perlType
hi  link     perlSpecialAscii  perlSpecial
hi  link     perlSpecialDollar  perlSpecial
hi perlSync        NONE
hi perlSyncPOD     NONE
hi vimPerlRegion   NONE
hi  link     rubyConditional  Conditional
hi  link     rubyExceptional  rubyConditional
hi  link     rubyMethodExceptional  rubyDefine
hi  link     rubyTodo        Todo
hi  link     rubyStringEscape  Special
hi  link     rubyQuoteEscape  rubyStringEscape
hi  link     rubyInterpolationDelimiter  Delimiter
hi rubyInterpolation  NONE
hi  link     rubyInstanceVariable  rubyIdentifier
hi  link     rubyClassVariable  rubyIdentifier
hi  link     rubyGlobalVariable  rubyIdentifier
hi  link     rubyPredefinedVariable  rubyPredefinedIdentifier
hi  link     rubyInvalidVariable  Error
hi  link     rubyNoInterpolation  rubyString
hi rubyDelimEscape  NONE
hi  link     rubyString      String
hi rubyNestedParentheses  NONE
hi rubyNestedCurlyBraces  NONE
hi rubyNestedAngleBrackets  NONE
hi rubyNestedSquareBrackets  NONE
hi  link     rubyRegexpSpecial  Special
hi  link     rubyRegexpComment  Comment
hi rubyRegexpParens  NONE
hi  link     rubyRegexpCharClass  rubyRegexpSpecial
hi  link     rubyRegexpEscape  rubyRegexpSpecial
hi rubyRegexpBrackets  NONE
hi  link     rubyRegexpQuantifier  rubyRegexpSpecial
hi  link     rubyRegexpAnchor  rubyRegexpSpecial
hi  link     rubyRegexpDot   rubyRegexpCharClass
hi  link     rubyASCIICode   Character
hi  link     rubyInteger     Number
hi  link     rubyFloat       Float
hi rubyLocalVariableOrMethod  NONE
hi rubyBlockArgument  NONE
hi  link     rubyConstant    Type
hi  link     rubySymbol      Constant
hi  link     rubyBlockParameter  rubyIdentifier
hi rubyBlockParameterList  NONE
hi  link     rubyPredefinedConstant  rubyPredefinedIdentifier
hi  link     rubyRegexpDelimiter  rubyStringDelimiter
hi  link     rubyRegexp      rubyString
hi  link     rubyStringDelimiter  Delimiter
hi  link     rubySymbolDelimiter  rubyStringDelimiter
hi rubyHeredocStart  NONE
hi rubyAliasDeclaration2  NONE
hi rubyAliasDeclaration  NONE
hi  link     rubyBoolean     Boolean
hi  link     rubyPseudoVariable  Constant
hi rubyMethodDeclaration  NONE
hi  link     rubyOperator    Operator
hi rubyClassDeclaration  NONE
hi rubyModuleDeclaration  NONE
hi  link     rubyFunction    Function
hi  link     rubyControl     Statement
hi  link     rubyKeyword     Keyword
hi  link     rubyBeginEnd    Statement
hi  link     rubyDefine      Define
hi  link     rubyClass       rubyDefine
hi  link     rubyModule      rubyDefine
hi rubyMethodBlock  NONE
hi rubyBlock       NONE
hi  link     rubyConditionalModifier  rubyConditional
hi  link     rubyRepeatModifier  rubyRepeat
hi rubyDoBlock     NONE
hi rubyCurlyBlock  NONE
hi rubyArrayDelimiter  NONE
hi rubyArrayLiteral  NONE
hi rubyBlockExpression  NONE
hi rubyCaseExpression  NONE
hi rubyConditionalExpression  NONE
hi  link     rubyRepeat      Repeat
hi  link     rubyOptionalDo  rubyRepeat
hi rubyOptionalDoLine  NONE
hi rubyRepeatExpression  NONE
hi  link     rubyAccess      Statement
hi  link     rubyAttribute   Statement
hi  link     rubyEval        Statement
hi  link     rubyException   Exception
hi  link     rubyInclude     Include
hi  link     rubySharpBang   PreProc
hi  link     rubySpaceError  rubyError
hi  link     rubyComment     Comment
hi rubyMultilineComment  NONE
hi  link     rubyDocumentation  Comment
hi rubyKeywordAsMethod  NONE
hi  link     rubyDataDirective  Delimiter
hi  link     rubyData        Comment
hi  link     rubyIdentifier  Identifier
hi  link     rubyPredefinedIdentifier  rubyIdentifier
hi  link     rubyPseudoOperator  rubyOperator
hi  link     rubyError       Error
hi vimRubyRegion   NONE
hi  link     pythonStatement  Statement
hi  link     pythonFunction  Function
hi  link     pythonConditional  Conditional
hi  link     pythonRepeat    Repeat
hi  link     pythonOperator  Operator
hi  link     pythonException  Exception
hi  link     pythonInclude   Include
hi  link     pythonDecorator  Define
hi  link     pythonTodo      Todo
hi  link     pythonComment   Comment
hi  link     pythonEscape    Special
hi  link     pythonString    String
hi pythonSpaceError  NONE
hi  link     pythonDoctest   Special
hi  link     pythonRawString  String
hi  link     pythonNumber    Number
hi  link     pythonBuiltin   Function
hi  link     pythonExceptions  Structure
hi  link     pythonDoctestValue  Define
hi pythonSync      NONE
hi vimPythonRegion  NONE
hi  link     vimEmbedError   vimError
hi vimAugroupSyncA  NONE
hi  link     vimAuHighlight  vimHighlight
hi  link     vimError        Error
hi  link     vimKeyCodeError  vimError
hi  link     vimWarn         WarningMsg
hi  link     vimAutoCmdOpt   vimOption
hi  link     vimAutoSet      vimCommand
hi  link     vimCondHL       vimCommand
hi  link     vimElseif       vimCondHL
hi  link     vimSynOption    Special
hi  link     vimKeyCode      vimSpecFile
hi  link     vimSpecial      Type
hi  link     vimFold         Folded
hi  link     vimHLMod        PreProc
hi  link     vimKeyword      Statement
hi  link     vimStatement    Statement

" vim: sw=2
