%dw 2.0
output application/json
var values = payload pluck((value, key) -> value)
---
root:{
    "abs_values": {
        num1: abs(payload.num1),
        num2: abs(payload.num2),
        num3: abs(payload.num3),
        num4: abs(payload.num4),
        num5: abs(payload.num5),
        num6: abs(payload.num6)
    },
    "ceil_values": {
        num1: ceil(payload.num1),
        num2: ceil(payload.num2),
        num3: ceil(payload.num3),
        num4: ceil(payload.num4),
        num5: ceil(payload.num5),
        num6: ceil(payload.num6)
    },
    "floor_values": {
        num1: floor(payload.num1),
        num2: floor(payload.num2),
        num3: floor(payload.num3),
        num4: floor(payload.num4),
        num5: floor(payload.num5),
        num6: floor(payload.num6)
    },
    "round_values": {
        num1: round(payload.num1),
        num2: round(payload.num2),
        num3: round(payload.num3),
        num4: round(payload.num4),
        num5: round(payload.num5),
        num6: round(payload.num6)
    },
    "array": values,
    "average_value": avg(values),
    "max_value": max(values),
    "min_value": min(values)
    
}