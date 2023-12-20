
import Prelude
import Cardano.Api
import System.Directory
import System.FilePath.Posix ((</>))
--paas Plutus V1
import paasV1.UnlockBypaasWithOutDeadLine (unlockBypaasWithOutDeadLineScript)
import paasV1.UnlockBypaasWithDeadLine (unlockBypaasWithDeadLineScript)
import paasV1.UnlockByEmpWithDeadLine (unlockByEmpWithDeadLineScript)
import paasV1.UnlockByEmpWithoutDeadLine (unlockByEmpWithoutDeadLineScript)
import paasV1.SimpleToTest (simpleToTestScript)

--paas Plutus V2
import paasV2.UnlockBypaasWithOutDeadLine (unlockBypaasWithOutDeadLineScriptV2)
import paasV2.UnlockBypaasWithDeadLine (unlockBypaasWithDeadLineScriptV2)
import paasV2.UnlockByEmpWithDeadLine (unlockByEmpWithDeadLineScriptV2)
import paasV2.UnlockByEmpWithoutDeadLine (unlockByEmpWithoutDeadLineScriptV2)

main :: IO ()
main = do
  let paasV1 = "generated-plutus-scripts/paasV1"
  let paasV2 = "generated-plutus-scripts/paasV2"
  createDirectoryIfMissing True paasV1
  createDirectoryIfMissing True paasV2
  _ <- writeFileTextEnvelope (paasV1 </> "unlockBypaasWithOutDeadLineScript.plutus") Nothing unlockBypaasWithOutDeadLineScript
  _ <- writeFileTextEnvelope (paasV1 </> "unlockBypaasWithDeadLineScript.plutus") Nothing unlockBypaasWithDeadLineScript
  _ <- writeFileTextEnvelope (paasV1 </> "unlockByEmpWithDeadLineScript.plutus") Nothing unlockByEmpWithDeadLineScript
  _ <- writeFileTextEnvelope (paasV1 </> "unlockByEmpWithoutDeadLineScript.plutus") Nothing unlockByEmpWithoutDeadLineScript
  
  --Plutus V2
  _ <- writeFileTextEnvelope (paasV2 </> "unlockBypaasWithOutDeadLineScript.plutus") Nothing unlockBypaasWithOutDeadLineScriptV2
  _ <- writeFileTextEnvelope (paasV2 </> "unlockBypaasWithDeadLineScript.plutus") Nothing unlockBypaasWithDeadLineScriptV2
  _ <- writeFileTextEnvelope (paasV2 </> "unlockByEmpWithDeadLineScript.plutus") Nothing unlockByEmpWithDeadLineScriptV2
  _ <- writeFileTextEnvelope (paasV2 </> "unlockByEmpWithoutDeadLineScript.plutus") Nothing unlockByEmpWithoutDeadLineScriptV2

  _ <- writeFileTextEnvelope (paasV1 </> "simpleToTestScript.plutus") Nothing simpleToTestScript

  return ()