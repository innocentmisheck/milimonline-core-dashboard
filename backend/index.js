import express from "express";
import { json  } from "express";
import cors from "cors";
import Router from "./routes/routes.js";

const app = express();
const port = 3000;

app.use(json());
app.use(cors());
app.use(Router);

app.listen(port, () => {
  console.log(`Server running successfully on port ${port}`);
});
