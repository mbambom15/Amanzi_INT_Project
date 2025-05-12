# Amanzi_INT_Project
Collaboration project for Internet Programming, for 2025.
232243325 - CE Buthelezi
224581009 - L Mashiya
224065396 - KM Kekana
224550278 - JS Mathonsi
224641362 - N Mbambo

Group members.

The Amanzi Water Ordering System is a secure, role-based web application developed using Java EE technologies. It manages customer orders for water products in various quantities. The system includes functionality for Customers, Employees, and Managers.

---

## 👥 User Roles and Permissions

### 🧑‍💼 Manager
- Add, edit, and remove water products
- View all customer orders
- ### 🧍 Customer
- Register and log in
- View product catalog
- Place and view their own orders
## 🧱 Entity Classes

### 1. `User`
- `userID`
- `username`
- `password`
- `role`

### 2. `CustomerProfile`
- `profileID`
- `User` (One-to-One)
- `name`
- `contactNumber`
- `address`

### 3. `Product`
- `productID`
- `name`
- `unitPrice`
- `stockQuantity`

### 4. `Order`
- `orderID`
- `CustomerProfile` (Many-to-One)
- `orderDate`
- `deliveryMethod`
- `totalPrice`

### 5. `OrderItem`
- `orderItemID`
- `Order` (Many-to-One)
- `Product` (Many-to-One)
- `quantity`
- `totalPrice`

---

## 🛠 JPQL Queries
- Find customers who placed more than one order.
- Display available stock (detect out-of-stock items).

---

## 🔐 Security
- **Form-based authentication** (login/logout)
- **Session-based authorization**
- Users are redirected to an error page if they try to access unauthorized resources.

---

## 💾 Database
- **Database name**: `AmanziDB`

---## 👨‍💻 Author
- N Mbambo, CE Buthelezi, L Mashiya, KM Kekana, JS Mathonsi
