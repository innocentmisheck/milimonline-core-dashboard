import {
    getMoods
  } from "../models/MoodModel.js";
  
  export const showMoods = (req, res) => {
    getMoods((err, results) => {
      if (err) {
        res.send(err);
      } else {
        res.json(results);
      }
    });
  };
  