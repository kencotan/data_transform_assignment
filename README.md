# Data Transformation Assignment Details

An e-commerce platform has purchase transaction data with the following details:

1. waktu_pembelian (purchase_time)
2. user_id -> ID of the user making the purchase
3. store_id -> ID of the seller when the user makes the purchase
4. barang_id (item_id) -> ID of the item purchased
5. jumlah_barang (item_quantity) -> Quantity of items purchased in a single transaction
6. harga_barang (item_price) -> Price per item purchased

We are tasked with creating a dashboard to monitor the following metrics:

1. Total transactions per hour
2. Total users making purchases per hour
3. Total items sold for each barang_id (item_id)
4. Total items sold for each store_id

Therefore, a summary table containing this information is required.

# Objective
Create queries to:
1. Extract data from the data warehouse,
2. Transform the data in staging, and
3. Load the transformed results into the datamart.
4. Create one table for each metric to be monitored!

# Submission Guidelines
1. Query/Script for extracting, transforming, and loading the data.
2. Create a slide presentation to explain the details of each step, including some visuals.
3. ZIP the answer files and submit them via the Learning Management System.

# Evaluation Criteria
1. Query efficiency, syntax selection, and completeness of the overall process.
2. Clarity of explanations for each step in the slide presentation.

# Slide Details
1. Slide title (include your name and assignment topic -> Data Transformation)
2. Explanation of what ETL is and why ETL is important.
3. Step for Extracting Data to the data warehouse.
4. Step and explanation of what happens during the transformation of Metric 1.
5. Step and explanation of what happens during the transformation of Metric 2.
6. Step and explanation of what happens during the transformation of Metric 3.
7. Step and explanation of what happens during the transformation of Metric 4.
8. Conclusion of the entire process and closing remarks.
9. Documentation: Query each table in the datamart to demonstrate the results of the ETL process.
