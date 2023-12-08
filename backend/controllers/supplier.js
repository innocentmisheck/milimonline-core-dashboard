import { getSupplier, getSupplierProductDetails} from "../models/SupplierModel.js";

export const showSupplier = (req, res) => {
    getSupplier((err, results) => {
      if (err) {
        res.send(err);
      } else {
        console.log(results)
        res.json(results);
      }
    });
};

export const showSupplierProductDetails = (req, res) => {
    const productId = req.params.id; // Assuming the product ID is part of the URL parameters
  
    getSupplierProductDetails(productId, (err, result) => {
      if (err) {
        res.send(err);
      } else {
        res.json(result);
        if(result == null){
            console.log("Product not found")
        }
      }
    });
  };


