%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "status": "201",
  "message": "Restaurant created successfully.",
  "restaurantId": "12345"
})