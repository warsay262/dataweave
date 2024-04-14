%dw 2.0
output application/json
var nullString = null
var empty = {}
---
[{
    "Is_Blank":isBlank(""),
    "isStringBlank": isBlank("Hello"),
    "isStringNotBlank": not isBlank("Hello"),
    "isNumBlank": isBlank(payload.blank2),
    "isStringBlank": isBlank(payload.blank1),
    "isStringNotBlank": not isBlank(payload.blank1),
    "isFieldMissing": isBlank(empty.missingField),
    "nullString": isBlank(nullString)
},

{
    "isStringEmpty": isEmpty(""),
    "isStringEmpty": isEmpty("Hello"),
    "isArrayEmpty": isEmpty([]),
    "isArrsayEmpty": isEmpty([1]),
    "isPayloadEmpty": isEmpty(payload),
    "isPayloadEmpty": isEmpty(empty),
    "isObjectEmpty": isEmpty(payload.blank1),
    "isObjectEmpty": isEmpty(payload.blank2),
    "nullString": isEmpty(null),
    "notNullString": ! isEmpty(null)
}]