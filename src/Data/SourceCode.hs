module Data.SourceCode where

import Data.SPL

type Tag = String
type FileName = String

data ComponentModel = ComponentModel {
  includedFiles   :: [FileName],
  excludedFiles   :: [FileName],
  includedTags    :: [Tag],
  preprocessFiles :: [FileName]
}


instance Asset ComponentModel where
  create = ComponentModel [] [] [] []
