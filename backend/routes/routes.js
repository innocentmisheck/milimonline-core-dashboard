import express from "express";

import {showMoods} from "../controllers/moods.js";
import {showWeather} from "../controllers/weather.js";
import {showProduct, showProductShowcase} from "../controllers/product.js";
import { showProductDetails } from "../controllers/product.js";
import { showFilterProduct } from "../controllers/product.js";
import { updateProduct } from '../controllers/product.js'
import { showSupplier, showSupplierProductDetails} from "../controllers/supplier.js";


const router = express.Router();

router.get("/moods", showMoods);
router.get("/weather", showWeather);
router.get("/product", showProduct);
router.get("/supplier", showSupplier);
router.get("/supplier/product/:id", showSupplierProductDetails);
router.get("/product/showcase", showProductShowcase);
router.get("/product/:id", showProductDetails);
router.get("/filterProduct/:productName", showFilterProduct);
router.put('/product/:id', updateProduct);


export default router;
