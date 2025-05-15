bug_reports_md = """
### Bug Reports for SauceDemo Website

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
"""

file_path = "/mnt/data/README_bug_reports.md"

with open(file_path, "w") as f:
    f.write(bug_reports_md)

file_path
