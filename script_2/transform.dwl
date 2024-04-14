%dw 2.0
output application/json
---
[[
//Using Contains
payload.name contains "Product A",
payload.id contains "4"
],[
//Using distinctBy
payload distinctBy ((item) -> item.id),
payload distinctBy ((item) -> item.name),
[1,2,6,5,6,2,4,4,4,4,9,1.1] distinctBy $
]]
