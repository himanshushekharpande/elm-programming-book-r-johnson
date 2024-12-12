module AdditionTest exposing (tests)
import Expect
import Test exposing (..)

tests : Test
tests =
        describe "Sum Calculation"
        [ test "1 + 1 is 2" <|
                \_ -> Expect.equal(1 + 1) 2
                , test "2 + 2 is 4" <|
                        \_ -> Expect.equal(2 + 2) 4
        ]
