{-|
Module      : GHCJS.Perch
Description : Monadic DOM builder
Copyright   : (c) Athur S. Fayzrakhmanov, 2015
                  Alberto G. Corona, 2015
License     : GPL-3
Maintainer  : heraldhoi@gmail.com
Stability   : experimental
Portability : Any

Monad and Monoid instances for a builder that hang DOM elements from the
current parent element.

-}

module GHCJS.Perch
  ( -- * Perch DOM Builder
    module Internal.Perch
    -- * Types
  , module Internal.Type
    -- * Internal API
  , module Internal.API )
  where

import           Internal.API
import           Internal.Perch
import           Internal.Type
