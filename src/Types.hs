module Types where

data Option = Option
             { packageName   :: String
             , moduleName    :: String
             , directoryName :: String
             , author        :: String
             , email         :: String
             , year          :: String
             , source        :: Source
             , afterCommands :: [String]
             } deriving (Eq,Ord,Show)

type File = (FilePath,String)

data Modified a = Modified a a deriving (Eq,Ord,Show) -- TODO No way to distinguish modified/original

type ConvertedFile = Modified File

data Source = Repo String | CabalPackage String deriving (Eq,Ord,Show)
