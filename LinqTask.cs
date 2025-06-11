
// 1. List all customers' first and last names along with their email addresses:

var customers = context.Customers
    .Select(c => new { c.FirstName, c.LastName, c.Email })
    .ToList();

// 2. Retrieve all orders processed by a specific staff member (e.g., staff\_id = 3):

var ordersByStaff = context.Orders
    .Where(o => o.StaffId == 3)
    .ToList();

// 3. Get all products that belong to a category named "Mountain Bikes":

var mountainBikes = context.Products
    .Where(p => p.Category.CategoryName == "Mountain Bikes")
    .ToList();

// 4. Count the total number of orders per store:

var ordersPerStore = context.Orders
    .GroupBy(o => o.StoreId)
    .Select(g => new { StoreId = g.Key, OrderCount = g.Count() })
    .ToList();

// 5. List all orders that have not been shipped yet (shipped\_date is null):

var unshippedOrders = context.Orders
    .Where(o => o.ShippedDate == null)
    .ToList();

// 6. Display each customer’s full name and the number of orders they have placed:

var customerOrders = context.Orders
    .GroupBy(o => new { o.Customer.FirstName, o.Customer.LastName })
    .Select(g => new {
        FullName = g.Key.FirstName + " " + g.Key.LastName,
        OrderCount = g.Count()
    })
    .ToList();

// 7. List all products that have never been ordered (not found in order\_items):

var neverOrderedProducts = context.Products
    .Where(p => !context.OrderItems.Any(oi => oi.ProductId == p.ProductId))
    .ToList();

// 8. Display products that have a quantity of less than 5 in any store stock:

var lowStockProducts = context.Stocks
    .Where(s => s.Quantity < 5)
    .Select(s => s.Product)
    .Distinct()
    .ToList();

// 9. Retrieve the first product from the products table:

var firstProduct = context.Products.FirstOrDefault();

// 10. Retrieve all products from the products table with a certain model year (e.g., 2016):

int modelYear = 2016;
var productsByYear = context.Products
    .Where(p => p.ModelYear == modelYear)
    .ToList();

// 11. Display each product with the number of times it was ordered:

var productOrderCounts = context.OrderItems
    .GroupBy(oi => oi.Product)
    .Select(g => new { Product = g.Key.ProductName, TimesOrdered = g.Count() })
    .ToList();

// 12. Count the number of products in a specific category (e.g., category\_id = 6):

int categoryId = 6;
var productCount = context.Products
    .Count(p => p.CategoryId == categoryId);

// 13. Calculate the average list price of products:

var averagePrice = context.Products.Average(p => p.ListPrice);

// 14. Retrieve a specific product from the products table by ID (e.g., product\_id = 4):

var product = context.Products
    .FirstOrDefault(p => p.ProductId == 4);

// 15. List all products that were ordered with a quantity greater than 3 in any order:

var highQtyProducts = context.OrderItems
    .Where(oi => oi.Quantity > 3)
    .Select(oi => oi.Product)
    .Distinct()
    .ToList();

// 16. Display each staff member’s name and how many orders they processed:

var staffOrderCounts = context.Orders
    .GroupBy(o => o.Staff)
    .Select(g => new {
        StaffName = g.Key.FirstName + " " + g.Key.LastName,
        OrdersProcessed = g.Count()
    })
    .ToList();

// 17. List active staff members only (active = true) along with their phone numbers:

var activeStaff = context.Staffs
    .Where(s => s.Active == 1)
    .Select(s => new { s.FirstName, s.LastName, s.Phone })
    .ToList();

// 18. List all products with their brand name and category name:

var productDetails = context.Products
    .Select(p => new {
        p.ProductName,
        BrandName = p.Brand.BrandName,
        CategoryName = p.Category.CategoryName
    })
    .ToList();

// 19. Retrieve orders that are completed (order\_status = 4):

var completedOrders = context.Orders
    .Where(o => o.OrderStatus == 4)
    .ToList();

// 20. List each product with the total quantity sold (sum of quantity from order\_items):

var productQuantitiesSold = context.OrderItems
    .GroupBy(oi => oi.Product)
    .Select(g => new {
        ProductName = g.Key.ProductName,
        TotalQuantitySold = g.Sum(oi => oi.Quantity)
    })
    .ToList();
