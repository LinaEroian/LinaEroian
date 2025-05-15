# API Testing for SauceDemo (Hypothetical)

## Base URL:
`https://api.saucedemo.com`

## Tested Endpoints:

- `GET /products` – Returns list of products
- `POST /login` – User authentication
- `POST /cart` – Add product to cart

## Sample Test Case:

**Test**: Add item to cart  
**Request**:  
`POST /cart`  
`Body`: `{ "product_id": 3 }`  
**Expected**: `200 OK` with confirmation message

**Actual**: `500 Internal Server Error`  
