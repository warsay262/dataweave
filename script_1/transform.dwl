%dw 2.0
output application/json
var values = payload pluck((value, key) -> value)
---
root:{
    "abs_values": payload mapObject ((value, key) -> {(key):abs(value)}),
    "ceil_values": payload mapObject ((value, key) -> {(key):ceil(value)}),
    "floor_values": payload mapObject ((value, key) -> {(key):floor(value)}),
    "round_values": payload mapObject ((value, key) -> {(key):round(value)}),
    "array": values,
    "average_value": avg(values),
    "max_value": max(values),
    "min_value": min(values)
}
