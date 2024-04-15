%dw 2.0
output application/json
---
[
payload mapObject ((value, key, index) -> value filterObject ((v, k, i) -> v == 19.99)),

payload filterObject ((value, key, index) -> value.cost == 19.99),

payload mapObject ((value, key, index) -> "Item_$(index+1)": value)
]
