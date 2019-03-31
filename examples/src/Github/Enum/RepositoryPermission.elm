-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.RepositoryPermission exposing (RepositoryPermission(..), decoder, fromString, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-| The access level to a repository

  - Admin - Can read, clone, push, and add collaborators
  - Write - Can read, clone and push
  - Read - Can read and clone

-}
type RepositoryPermission
    = Admin
    | Write
    | Read


list : List RepositoryPermission
list =
    [ Admin, Write, Read ]


decoder : Decoder RepositoryPermission
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "ADMIN" ->
                        Decode.succeed Admin

                    "WRITE" ->
                        Decode.succeed Write

                    "READ" ->
                        Decode.succeed Read

                    _ ->
                        Decode.fail ("Invalid RepositoryPermission type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : RepositoryPermission -> String
toString enum =
    case enum of
        Admin ->
            "ADMIN"

        Write ->
            "WRITE"

        Read ->
            "READ"


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
fromString : String -> Maybe RepositoryPermission
fromString enumString =
    case enumString of
        "ADMIN" ->
            Just Admin

        "WRITE" ->
            Just Write

        "READ" ->
            Just Read

        _ ->
            Nothing
