import express from "express";

const app = express();

const port = 8000;

app.get("/", (req, res) => {
  res.json({ name: "nabin", message: "hello" });
});

app.listen(port, () => {
  console.log(`app running at http://localhost:${port}`);
});

// docker run

// docker build -t <anyname> .
// . means same directory
