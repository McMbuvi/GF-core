module GF.Source.AbsGF where

-- Haskell module generated by the BNF converter

import qualified Data.ByteString.Char8 as BS
newtype LString = LString BS.ByteString deriving (Eq,Ord,Show)
newtype PIdent = PIdent ((Int,Int),BS.ByteString) deriving (Eq,Ord,Show)
data Grammar =
   Gr [ModDef]
  deriving (Eq,Ord,Show)

data ModDef =
   MMain PIdent PIdent [ConcSpec]
 | MModule ComplMod ModType ModBody
  deriving (Eq,Ord,Show)

data ConcSpec =
   ConcSpec PIdent ConcExp
  deriving (Eq,Ord,Show)

data ConcExp =
   ConcExp PIdent [Transfer]
  deriving (Eq,Ord,Show)

data Transfer =
   TransferIn Open
 | TransferOut Open
  deriving (Eq,Ord,Show)

data ModType =
   MTAbstract PIdent
 | MTResource PIdent
 | MTInterface PIdent
 | MTConcrete PIdent PIdent
 | MTInstance PIdent PIdent
 | MTTransfer PIdent Open Open
  deriving (Eq,Ord,Show)

data ModBody =
   MBody Extend Opens [TopDef]
 | MNoBody [Included]
 | MWith Included [Open]
 | MWithBody Included [Open] Opens [TopDef]
 | MWithE [Included] Included [Open]
 | MWithEBody [Included] Included [Open] Opens [TopDef]
 | MReuse PIdent
 | MUnion [Included]
  deriving (Eq,Ord,Show)

data Extend =
   Ext [Included]
 | NoExt
  deriving (Eq,Ord,Show)

data Opens =
   NoOpens
 | OpenIn [Open]
  deriving (Eq,Ord,Show)

data Open =
   OName PIdent
 | OQualQO QualOpen PIdent
 | OQual QualOpen PIdent PIdent
  deriving (Eq,Ord,Show)

data ComplMod =
   CMCompl
 | CMIncompl
  deriving (Eq,Ord,Show)

data QualOpen =
   QOCompl
 | QOIncompl
 | QOInterface
  deriving (Eq,Ord,Show)

data Included =
   IAll PIdent
 | ISome PIdent [PIdent]
 | IMinus PIdent [PIdent]
  deriving (Eq,Ord,Show)

data Def =
   DDecl [Name] Exp
 | DDef [Name] Exp
 | DPatt Name [Patt] Exp
 | DFull [Name] Exp Exp
  deriving (Eq,Ord,Show)

data TopDef =
   DefCat [CatDef]
 | DefFun [FunDef]
 | DefFunData [FunDef]
 | DefDef [Def]
 | DefData [DataDef]
 | DefTrans [Def]
 | DefPar [ParDef]
 | DefOper [Def]
 | DefLincat [PrintDef]
 | DefLindef [Def]
 | DefLin [Def]
 | DefPrintCat [PrintDef]
 | DefPrintFun [PrintDef]
 | DefFlag [FlagDef]
 | DefPrintOld [PrintDef]
 | DefLintype [Def]
 | DefPattern [Def]
 | DefPackage PIdent [TopDef]
 | DefVars [Def]
 | DefTokenizer PIdent
  deriving (Eq,Ord,Show)

data CatDef =
   SimpleCatDef PIdent [DDecl]
 | ListCatDef PIdent [DDecl]
 | ListSizeCatDef PIdent [DDecl] Integer
  deriving (Eq,Ord,Show)

data FunDef =
   FunDef [PIdent] Exp
  deriving (Eq,Ord,Show)

data DataDef =
   DataDef PIdent [DataConstr]
  deriving (Eq,Ord,Show)

data DataConstr =
   DataId PIdent
 | DataQId PIdent PIdent
  deriving (Eq,Ord,Show)

data ParDef =
   ParDefDir PIdent [ParConstr]
 | ParDefIndir PIdent PIdent
 | ParDefAbs PIdent
  deriving (Eq,Ord,Show)

data ParConstr =
   ParConstr PIdent [DDecl]
  deriving (Eq,Ord,Show)

data PrintDef =
   PrintDef [Name] Exp
  deriving (Eq,Ord,Show)

data FlagDef =
   FlagDef PIdent PIdent
  deriving (Eq,Ord,Show)

data Name =
   IdentName PIdent
 | ListName PIdent
  deriving (Eq,Ord,Show)

data LocDef =
   LDDecl [PIdent] Exp
 | LDDef [PIdent] Exp
 | LDFull [PIdent] Exp Exp
  deriving (Eq,Ord,Show)

data Exp =
   EIdent PIdent
 | EConstr PIdent
 | ECons PIdent
 | ESort Sort
 | EString String
 | EInt Integer
 | EFloat Double
 | EMeta
 | EEmpty
 | EData
 | EList PIdent Exps
 | EStrings String
 | ERecord [LocDef]
 | ETuple [TupleComp]
 | EIndir PIdent
 | ETyped Exp Exp
 | EProj Exp Label
 | EQConstr PIdent PIdent
 | EQCons PIdent PIdent
 | EApp Exp Exp
 | ETable [Case]
 | ETTable Exp [Case]
 | EVTable Exp [Exp]
 | ECase Exp [Case]
 | EVariants [Exp]
 | EPre Exp [Altern]
 | EStrs [Exp]
 | EConAt PIdent Exp
 | EPatt Patt
 | EPattType Exp
 | ESelect Exp Exp
 | ETupTyp Exp Exp
 | EExtend Exp Exp
 | EGlue Exp Exp
 | EConcat Exp Exp
 | EAbstr [Bind] Exp
 | ECTable [Bind] Exp
 | EProd Decl Exp
 | ETType Exp Exp
 | ELet [LocDef] Exp
 | ELetb [LocDef] Exp
 | EWhere Exp [LocDef]
 | EEqs [Equation]
 | EExample Exp String
 | ELString LString
 | ELin PIdent
  deriving (Eq,Ord,Show)

data Exps =
   NilExp
 | ConsExp Exp Exps
  deriving (Eq,Ord,Show)

data Patt =
   PChar
 | PChars String
 | PMacro PIdent
 | PM PIdent PIdent
 | PW
 | PV PIdent
 | PCon PIdent
 | PQ PIdent PIdent
 | PInt Integer
 | PFloat Double
 | PStr String
 | PR [PattAss]
 | PTup [PattTupleComp]
 | PC PIdent [Patt]
 | PQC PIdent PIdent [Patt]
 | PDisj Patt Patt
 | PSeq Patt Patt
 | PRep Patt
 | PAs PIdent Patt
 | PNeg Patt
  deriving (Eq,Ord,Show)

data PattAss =
   PA [PIdent] Patt
  deriving (Eq,Ord,Show)

data Label =
   LIdent PIdent
 | LVar Integer
  deriving (Eq,Ord,Show)

data Sort =
   Sort_Type
 | Sort_PType
 | Sort_Tok
 | Sort_Str
 | Sort_Strs
  deriving (Eq,Ord,Show)

data Bind =
   BIdent PIdent
 | BWild
  deriving (Eq,Ord,Show)

data Decl =
   DDec [Bind] Exp
 | DExp Exp
  deriving (Eq,Ord,Show)

data TupleComp =
   TComp Exp
  deriving (Eq,Ord,Show)

data PattTupleComp =
   PTComp Patt
  deriving (Eq,Ord,Show)

data Case =
   Case Patt Exp
  deriving (Eq,Ord,Show)

data Equation =
   Equ [Patt] Exp
  deriving (Eq,Ord,Show)

data Altern =
   Alt Exp Exp
  deriving (Eq,Ord,Show)

data DDecl =
   DDDec [Bind] Exp
 | DDExp Exp
  deriving (Eq,Ord,Show)

data OldGrammar =
   OldGr Include [TopDef]
  deriving (Eq,Ord,Show)

data Include =
   NoIncl
 | Incl [FileName]
  deriving (Eq,Ord,Show)

data FileName =
   FString String
 | FIdent PIdent
 | FSlash FileName
 | FDot FileName
 | FMinus FileName
 | FAddId PIdent FileName
  deriving (Eq,Ord,Show)
