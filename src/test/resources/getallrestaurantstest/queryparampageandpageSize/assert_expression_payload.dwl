%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    "restaurantId": 3,
    "name": "Udupi Restaurant",
    "address": {
      "houseNumber": "303",
      "street": "SSS Street",
      "city": "Bangalore",
      "pincode": "445566"
    },
    "links": [
      {
        "linkName": "menus",
        "href": "/api/restaurants?page=2&pageSize=2/3/menus"
      }
    ]
  }
])