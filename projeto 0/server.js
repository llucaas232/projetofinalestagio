const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");

const app = express();
app.use(express.json());
app.use(cors());

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "123456",
  database: "projeto",
});

connection.connect((error) => {
  if (error) {
    console.error("Erro ao conectar ao banco de dados:", error);
  } else {
    console.log("Conexão com o banco de dados estabelecida.");
  }
});

app.post("/register", (req, res) => {
  const { name, email, user, password } = req.body;

  const checkEmailQuery = "SELECT * FROM registros WHERE email = ?";
  connection.query(checkEmailQuery, [email], (error, results) => {
    if (error) {
      console.error("Erro ao verificar o email no banco de dados:", error);
      res.status(500).send("Erro ao processar o registro.");
      return;
    }

    if (results.length > 0) {
      res.status(409).send("O email já está sendo usado.");
    } else {
      const insertQuery =
        "INSERT INTO registros (name, email, username, password) VALUES (?, ?, ?, ?)";
      connection.query(
        insertQuery,
        [name, email, user, password],
        (error, result) => {
          if (error) {
            console.error(
              "Erro ao inserir o registro no banco de dados:",
              error
            );
            res.status(500).send("Erro ao processar o registro.");
          } else {
            console.log("Registro inserido com sucesso!");
            res.status(200).send("Registro inserido com sucesso!");
          }
        }
      );
    }
  });
});

app.post("/login", (req, res) => {
  const { user, pass } = req.body;

  const query = "SELECT * FROM registros WHERE username = ? AND password = ?";
  connection.query(query, [user, pass], (error, results) => {
    if (error) {
      console.error(error);
      res.json({ success: false });
      return;
    }

    if (results.length > 0) {
      res.json({ success: true });
    } else {
      res.json({ success: false });
    }
  });
});

app.get("/products", (req, res) => {
  const query = "SELECT * FROM products";
  connection.query(query, (error, results) => {
    if (error) {
      console.error("Erro ao buscar os produtos.");
      res.status(500).send("Erro ao buscar os produtos.");
    } else {
      console.log(res.json({'data': results}));
    }
  });
});

app.get("/products/:productId", (req, res) => {
  const query = "SELECT * FROM products WHERE products.id = ?";
  const id = req.params.productId;
  connection.query(query, [id], (error, result) => {
    if(error) {
      let msg = `Erro ao buscar produto com id: ${id}.`;
      console.error(msg);
      res.status(500).send(msg);
    }else console.log(res.json({'data': result}))
  });
});

app.listen(3300, () => {
  console.log("Servidor em execução na porta 3300");
});