module Internal.FFI where

import           Internal.Type

import           GHCJS.Types             (JSFun, JSRef, JSString)
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
foreign import javascript unsafe "$r = document;"
  js_document :: IO Elem

foreign import javascript unsafe "document.body"
  js_documentBody :: IO Elem

foreign import javascript unsafe "document.createElement($1)"
  js_documentCreateNode :: JSString -> IO Elem

foreign import javascript unsafe "document.createTextNode($1)"
  js_createTextNode :: JSString -> IO Elem


foreign import javascript unsafe "$1.parentNode()"
  js_parentNode :: Elem -> IO Elem

foreign import javascript unsafe "$1.appendChild($2)"
  js_appendChild :: Elem -> Elem -> IO ()

foreign import javascript unsafe "$1.replaceChild($2,$3)"
  js_replaceChild :: Elem -> Elem -> Elem -> IO ()

foreign import javascript unsafe "$1.removeChild($2)"
  js_removeChild :: Elem -> Elem -> IO ()

foreign import javascript unsafe
  "function ($1) { \
  \  while ($1.hasChildNodes()) \
  \    elem.removeChild($1.lastChild); \
  \}"
  js_clearChildren :: Elem -> IO ()


foreign import javascript unsafe "$1.setAttribute($2, $3)"
  js_setAttribute :: Elem -> PropId -> JSString -> IO ()

foreign import javascript unsafe "$1.innerHTML = $2"
  js_innerHtml :: Elem -> JSString -> IO ()


foreign import javascript unsafe "document.querySelectorAll($1)"
  js_querySelectorAll :: JSString -> IO ElemArray


foreign import javascript unsafe
  "$1.addEventListener($2, $3);"
  js_addEventListener :: Elem -> JSString -> JSFun (JSRef a -> IO ()) -> IO ()
--------------------------------------------------------------------------------