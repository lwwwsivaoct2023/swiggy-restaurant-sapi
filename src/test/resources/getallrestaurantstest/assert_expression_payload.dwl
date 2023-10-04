import * from dw::test::Asserts 

var mydata =  if(vars.name=="Eat" and vars.page==1 and vars.pageSize==2)
 [
  {
    "restaurantId": 1,
    "name": "siva Eat  restaurant",
    "address": {
      "houseNumber": "101",
      "street": "ABC Street",
      "city": "Bangalore",
      "pincode": "560066"
    },
    "links": [
      {
        "linkName": "menus",
        "href": "/api/restaurants/1/menus"
      }
    ]
  },
  {
    "restaurantId": 2,
    "name": "Eat More",
    "address": {
      "houseNumber": "202",
      "street": "XYZ Street",
      "city": "California",
      "pincode": "345678"
    },
    "links": [
      {
        "linkName": "menus",
        "href": "/api/restaurants/2/menus"
      }
    ]
  }
]
 else if(vars.name=="" and vars.page==1 and vars.pageSize==2)
 	
 	[
  {
    "restaurantId": 1,
    "name": "siva Eat  restaurant",
    "address": {
      "houseNumber": "101",
      "street": "ABC Street",
      "city": "Bangalore",
      "pincode": "560066"
    },
    "links": [
      {
        "linkName": "menus",
        "href": "/api/restaurants/1/menus"
      }
    ]
  },
  {
    "restaurantId": 2,
    "name": "Eat More",
    "address": {
      "houseNumber": "202",
      "street": "XYZ Street",
      "city": "California",
      "pincode": "345678"
    },
    "links": [
      {
        "linkName": "menus",
        "href": "/api/restaurants/2/menus"
      }
    ]
  }
]
 	
 else  if(vars.name=="" and vars.page==2 and vars.pageSize==2)[
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
] else []

 ---

payload must equalTo(mydata)

