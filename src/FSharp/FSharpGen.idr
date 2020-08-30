module FSharpGen

import Core.Context
import Compiler.Common
import Idris.Driver
import Data.Buffer

compile : Ref Ctxt Defs -> (tmpDir : String) -> (outputDir : String) ->
        ClosedTerm -> (outfile : String) ->  do ?compile_rhs

execute : Ref Ctxt Defs -> (tmpDir : String) -> ClosedTerm -> Core ()
execute defs tmpDir term = ?execute_rhs

fsharpCodegen : Codegen
fsharpCodegen = MkCG compile execute

export
main : IO ()
main = mainWithCodegens [("fsharp", fsharpCodegen)] 
