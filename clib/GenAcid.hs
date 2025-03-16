{-# LANGUAGE TemplateHaskell #-}

module GenAcid where

import Language.Haskell.TH.Syntax

genAcid :: Q Exp
genAcid = do
    runIO (putStrLn "Hello from template haskell!")
    n <- newName "x"
    runIO $ do putStr "We just made the name "
               print n
    l <- location
    runIO $ do putStr "We're at "
               print l
    [| \x -> sin x |]
