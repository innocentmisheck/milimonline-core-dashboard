import db from "../config/database.js";

export const getMoods = (result) => {
  db.query("SELECT * FROM mood", (err, results) => {
    if (err) {
      console.log(err);
      result(err, null);
    } else {
      result(null, results);
      console.log(result)
    }
  });
};
