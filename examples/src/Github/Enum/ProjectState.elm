-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.ProjectState exposing (ProjectState(..), decoder, fromString, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-| State of the project; either 'open' or 'closed'

  - Open - The project is open.
  - Closed - The project is closed.

-}
type ProjectState
    = Open
    | Closed


list : List ProjectState
list =
    [ Open, Closed ]


decoder : Decoder ProjectState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "OPEN" ->
                        Decode.succeed Open

                    "CLOSED" ->
                        Decode.succeed Closed

                    _ ->
                        Decode.fail ("Invalid ProjectState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : ProjectState -> String
toString enum =
    case enum of
        Open ->
            "OPEN"

        Closed ->
            "CLOSED"


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
fromString : String -> Maybe ProjectState
fromString enumString =
    case enumString of
        "OPEN" ->
            Just Open

        "CLOSED" ->
            Just Closed

        _ ->
            Nothing
