module Shared exposing (..)

import Form exposing (Model)
import Scroll exposing (Move)
import Http exposing (Error)


-- MODEL

type alias Model = 
  { registered : Bool
  , signed : Bool
  , error : String
  , formModel : Form.Model
  , scrollTop: Float 
  }

initialModel : Model
initialModel =
  { registered = False
  , signed = False
  , error = ""
  , formModel = Form.initialModel
  , scrollTop = 0.0 
  }


-- MESSAGE

type Msg
  = Register
  | PostSucceed String
  | PostFail Error
  | FormMsg Form.Msg
  | Scrolling Move 