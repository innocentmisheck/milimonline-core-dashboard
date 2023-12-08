import {getProduct} from "../models/ProductModel.js";
import { getProductDetails } from "../models/ProductModel.js";
import { filterProduct } from "../models/ProductModel.js";
import { updateProductDetails } from '../models/ProductModel.js';
import { getProductShowCase } from "../models/ProductModel.js";

export const updateProduct = (req, res) => {
  const data = req.body;
  const id = req.params.id;
  updateProductDetails(data, id, (err, results) => {
    if (err) {
      res.send(err);
    } else {
      res.json(results);
    }
  });
};


export const showFilterProduct = (req, res) => {
  const productName = req.params.productName;

  filterProduct(productName, (err, results) => {
    if (err) {
      res.send(err);
    } else {
      res.json(results);
    }
  });
};


export const showProduct = (req, res) => {
    getProduct((err, results) => {
      if (err) {
        res.send(err);
      } else {
        res.json(results);
      }
    });
};

export const showProductShowcase = (req, res) => {
  getProductShowCase((err, results) => {
    if (err) {
      res.send(err);
    } else {
      res.json(results);
    }
  });
};
  

export const showProductDetails = (req, res) => {
  const productId = req.params.id; // Assuming the product ID is part of the URL parameters

  getProductDetails(productId, (err, result) => {
    if (err) {
      res.send(err);
    } else {
      res.json(result);
    }
  });
};

