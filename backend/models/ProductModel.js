import db from "../config/database.js";

export const getProduct = (result) => {
  const query = `
    SELECT
      p.product_id,
      p.product_name,
      rpc.product_category_description,
      p.product_unit_quantity,
      p.other_product_detials 
    FROM
      products p
    JOIN
      ref_product_categories rpc ON rpc.product_category_code = p.product_category_code;
  `;

  db.query(query, (err, results) => {
    if (err) {
      console.error("Error executing the query:", err);
      result(err, null);
    } else {
      result(null, results);
    }
  });
};

export const getProductShowCase = (result)=>{
    const query =`
    SELECT 
		p.product_id,
		p.product_name,
		rpc.product_category_description,
		p.product_unit_quantity,
		p.quantity_symbol,
		p.other_product_detials,
		p.product_name, 
		ps.showcase_start, 
    ps.showcase_start, 
    ps.showcase_end, 
    ps.product_narrative      
    FROM 
        products p
    LEFT JOIN
        product_showcase ps ON ps.product_id = p.product_id
    LEFT JOIN
        ref_product_categories rpc ON rpc.product_category_code = p.product_category_code;`;

    db.query(query, (err, results) => {
      if (err) {
        console.error("Error executing the query:", err);
        result(err, null);
      } else {
        console.log(results)
        result(null, results);
      }
    });
};

export const getProductDetails = (productId, result) => {
  const query = `
    SELECT
      p.product_id,
      p.product_name,
      rpc.product_category_description,
      p.product_unit_quantity,
      p.quantity_symbol,
      p.other_product_detials
    FROM
      products p
    JOIN
      ref_product_categories rpc ON rpc.product_category_code = p.product_category_code
    WHERE
      p.product_id = ?;
  `;

  db.query(query, [productId], (err, results) => {
    if (err) {
      console.error("Error executing the query:", err);
      result(err, null);
    } else {
      console.log(results)
      result(null, results[0]); // Assuming there is only one product with the given ID
    }
  });
};

export const filterProduct = (userInput, result) => {
  // Modify the SQL query to use a parameterized query with LIKE operator
  const query = `
    SELECT
      p.product_id,
      p.product_name,
      rpc.product_category_description,
      p.product_unit_quantity,
      p.other_product_detials 
    FROM
      products p
    JOIN
      ref_product_categories rpc ON rpc.product_category_code = p.product_category_code
    WHERE
      p.product_name LIKE ?;
  `;

  const searchPattern = `%${userInput}%`;  // Add % before and after the userInput for partial matching

  db.query(query, [searchPattern], (err, results) => {
    if (err) {
      console.error("Error executing the query:", err);
      result(err, null);
    } else {
      result(null, results);
    }
  });
};

export const updateProductDetails  = (data, id, result) => {
  db.query(
    `UPDATE products
    SET
      product_name = ?,
      product_unit_quantity = ?,
      other_product_detials = ?
    WHERE
      product_id = ?;`,
    [data.product_name,data.product_unit_quantity,data.other_product_detials, id],
    (err, results) => {
      if (err) {
        console.log(err);
        result(err, null);
      } else {
        console.log(data)
        result(null, results);
      }
    }
  );
};









