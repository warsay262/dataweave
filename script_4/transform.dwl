%dw 2.0
output application/json
---
{ "JoinBy":
    { "Strings":
        {
            "Full string": (payload joinBy(" ")),
            "Limited String": (payload joinBy(" "))[17 to 56],
            "Backword String": (payload joinBy(" "))[-1 to 0],
            "Using Char.": (payload joinBy(" ._. ")),
        },

        "Numbers":
        {
            "Large Num": [27, 14, 56, 89, 3, 42, 71, 6, 19.4, 33.3] joinBy(""),
            "Adding Char": [27, 14, 56, 89, 3, 42, 71, 6, 19.4, 33.3] joinBy("."),
            "Using Equations": [3/6, 2*2, 5+5, 9-8] joinBy(" ")
        }
    }
}