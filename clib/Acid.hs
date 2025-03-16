{-# LANGUAGE TemplateHaskell #-}

module Acid where

import GenAcid

acid :: Double -> Double
acid = $genAcid

foreign export ccall acid :: Double -> Double
