import db from "../config/database.js";

export const getSupplier = (result) => {
  const query = `
  SELECT 
  s.supplier_id,
  rss.contact_person,
  rss.language,
  s.supplier_name,
  rpc.product_category_description,
  s.supplier_description,
  s.supplier_email,
  s.supplier_phone,
  s.supplier_reg_date
  
  FROM suppliers s
  
  LEFT JOIN
    ref_supplier_settings rss ON s.supplier_id = rss.supplier_id 
  LEFT JOIN
  ref_product_categories rpc ON rpc.product_category_code =  s.supplier_category_code;`;

  db.query(query, (err, results) => {
    if (err) {
      console.error("Error executing the query:", err);
      result(err, null);
    } else {
      result(null, results);
    }
  });
};

export const getSupplierProductDetails = (productId, result) => {
    const query = `
    SELECT 
	  s.supplier_id,
    p.product_id,
    rss.contact_person,
    rss.language,
	  s.supplier_name,
    rpc.product_category_description,
    s.supplier_description,
    s.supplier_email,
    s.supplier_phone,
    s.supplier_reg_date
        
    FROM suppliers s

    LEFT JOIN
        ref_supplier_settings rss ON s.supplier_id = rss.supplier_id 
    LEFT JOIN
        ref_product_categories rpc ON rpc.product_category_code =  s.supplier_category_code
    LEFT JOIN
        products p ON p.product_supplier_id =  rss.supplier_id 
    WHERE p.product_id = ? ;
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
 