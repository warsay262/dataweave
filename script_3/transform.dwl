%dw 2.0
output application/json
var item = payload filter $.cost == 19.99
---
[
    // Filter to find products with costs equaling $19.99 
item map (value,num) -> "Product_$(num+1)": value,

payload mapObject ((value, key, index) -> value filterObject ((v, k, i) -> v == 19.99)),

payload filterObject ((value, key, index) -> value.cost == 19.99),

payload mapObject ((value, key, index) -> "Item_$(index+1)": value)
]
