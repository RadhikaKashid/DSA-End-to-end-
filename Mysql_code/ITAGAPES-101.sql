## Rename tables because there is space in the name and which is not allowed in sql 

use adventureworks;

RENAME TABLE `customer lookup` TO customer_lookup;
Rename table `product categories lookup` to product_categories;
Rename table `product category sales (unpivot demo)` to Product_category_sales;
Rename table `product subcategories` to Product_Subcategories;
Rename table `sales data 2020` to Sales2020;
Rename table `sales data 2021` to Sales2021;
Rename table `sales data 2022` to sales2022;
Rename table `territory lookup` to Territory_lookup;
Rename table `works product lookup` to works_productlookup;
Rename table `returns data` to returns_data;