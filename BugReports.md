### Bug Reports for SauceDemo Website (https://www.saucedemo.com)

| ID  | Title                                             | Steps to Reproduce                                                                 | Expected Result                                           | Actual Result                                              | Severity |
|-----|---------------------------------------------------|-------------------------------------------------------------------------------------|-----------------------------------------------------------|-------------------------------------------------------------|----------|
| 001 | Incorrect product image on product details page   | 1. Login<br>2. Click on "Sauce Labs Backpack"<br>3. View product image              | Product image should match item                           | Image is incorrect or mismatched                            | Medium   |
| 002 | Broken link on footer                             | 1. Scroll to page footer<br>2. Click on "Twitter" link                              | Redirect to official Twitter page                         | 404 error or incorrect page                                 | Low      |
| 003 | Missing validation on checkout first name field   | 1. Login<br>2. Add item to cart<br>3. Proceed to checkout<br>4. Leave First Name empty<br>5. Click Continue | Error should appear requiring first name                 | No error displayed; user can proceed                        | High     |
| 004 | Incorrect sorting behavior                        | 1. Select "Price: Low to High" sorting option                                      | Items should be sorted correctly                          | Items appear in incorrect order                             | Medium   |
| 005 | Cart badge not updating                           | 1. Add item to cart<br>2. Observe cart icon                                        | Badge should update with quantity                         | Badge doesn't update until page refresh                     | High     |
| 006 | Incorrect price formatting                        | 1. Login as standard user<br>2. Go to any product page                             | Product price should include two decimal digits (e.g., $9.99) | Some prices display without cents (e.g., $9)              | Low      |
| 007 | Login allows leading/trailing spaces in username  | 1. Enter " standard_user " with spaces<br>2. Enter correct password<br>3. Click Login | Login should fail due to invalid username format           | Login successful with spaces in username                   | Medium   |
| 008 | No error shown when cart is empty on checkout     | 1. Login<br>2. Go to cart without adding items<br>3. Proceed to checkout           | Error message should be shown: "Your cart is empty"        | Checkout continues with no validation                     | Medium   |
| 009 | Logout button not accessible via keyboard         | 1. Login<br>2. Press Tab key until reaching the side menu<br>3. Try to logout      | Logout should be reachable and operable via keyboard       | Logout not reachable using keyboard only                   | High     |
| 010 | Sorting does not persist after page refresh       | 1. Sort items by "Price: High to Low"<br>2. Refresh the page                        | Selected sorting should persist after refresh              | Sorting resets to default                                  | Medium   |

# API Bug Reports 

## Bug Report 1
**Title:** Missing Authentication on GET /inventory  
**Severity:** High  
**Steps to Reproduce:**  
1. Send a GET request to `/inventory` without an access token  
2. Observe response  
**Expected Result:** 401 Unauthorized  
**Actual Result:** 200 OK with inventory data  
**Environment:** Postman, Base URL: `https://www.saucedemo.com/api`

---

## Bug Report 2  
**Title:** Incorrect status code for invalid login  
**Severity:** Medium  
**Steps to Reproduce:**  
1. Send POST `/login` with invalid credentials  
2. Observe status code  
**Expected Result:** 401 Unauthorized  
**Actual Result:** 200 OK with error message  
**Environment:** Postman

---

## Bug Report 3  
**Title:** Response time is over 3 seconds on GET /cart  
**Severity:** Low  
**Steps to Reproduce:**  
1. Send GET request to `/cart`  
2. Measure response time  
**Expected Result:** < 2s  
**Actual Result:** 3.5s  
**Environment:** Postman, WiFi 100 Mbps

---

## Bug Report 4  
**Title:** No validation on POST /checkout  
**Severity:** High  
**Steps to Reproduce:**  
1. Send POST request without required fields  
2. Observe behavior  
**Expected Result:** 400 Bad Request  
**Actual Result:** 200 OK  
**Environment:** Postman

---

## Bug Report 5  
**Title:** GET /users returns internal user details  
**Severity:** Critical  
**Steps to Reproduce:**  
1. Login as standard user  
2. Send GET `/users`  
**Expected Result:** Only current user info  
**Actual Result:** Sensitive details of other users  
**Environment:** Postman, Auth token

# SQL Bug Reports 

## Bug Report 1  
**Title:** Duplicate entries in Users table  
**Severity:** Medium  
**Description:** Running `SELECT * FROM users GROUP BY email HAVING COUNT(*) > 1` returns duplicate emails.  
**Expected:** Unique email per user  
**Actual:** Multiple records with same email

---

## Bug Report 2  
**Title:** Missing foreign key in orders table  
**Severity:** High  
**Description:** Orders table missing `FOREIGN KEY` constraint to users  
**Expected:** Proper relational integrity  
**Actual:** Orphan orders found

---

## Bug Report 3  
**Title:** Null values in `product_name` field  
**Severity:** Medium  
**Description:** Some entries in `products` table have null `product_name`  
**Query:** `SELECT * FROM products WHERE product_name IS NULL;`  
**Expected:** All products should have names  
**Actual:** Found 5 rows with NULL

---

## Bug Report 4  
**Title:** Prices stored as text  
**Severity:** Low  
**Description:** Column `price` in `products` table is of type `VARCHAR`  
**Expected:** `DECIMAL(10,2)`  
**Actual:** Text, leads to sorting/filtering errors

---

## Bug Report 5  
**Title:** No index on login timestamp  
**Severity:** Low  
**Description:** `login_history` table lacks index on `timestamp`  
**Impact:** Slow performance for recent login lookups  
**Query:** `SELECT * FROM login_history ORDER BY timestamp DESC LIMIT 10;`
