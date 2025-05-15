const express = require("express");

const app = express();

const port = 3000;


app.get("/", (req, res) => {
  res.send("hola a todos");
});

app.listen(port, () => {
  console.log("Servidor corriendo en el puerto 3000");
});
