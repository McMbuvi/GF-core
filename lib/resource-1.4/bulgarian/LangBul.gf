--# -path=.:../abstract:../common:prelude

concrete LangBul of Lang = 
  GrammarBul,
  LexiconBul
  ** {

flags startcat = Phr ; unlexer = text ; lexer = text ;

} ;