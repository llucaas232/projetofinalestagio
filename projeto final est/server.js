const express = require("express");
const mysql = require("mysql2");
const app = express();

app.use(express.json());

const bodyParser = require("body-parser");

// Middleware para analisar o corpo das solicitações
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// Rota para receber os dados do formulário
app.post("/register", (req, res) => {
  const { name, email, user, password } = req.body;

  // Cria uma nova conexão com o banco de dados
  const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "123456",
    database: "projeto",
  });

  // Conexão com o banco de dados
  connection.connect((error) => {
    if (error) {
      console.error("Erro ao conectar ao banco de dados:", error);
      res.status(500).send("Erro ao conectar ao banco de dados.");
    } else {
      console.log("Conexão com o banco de dados estabelecida.");
      

      // Insere o registro no banco de dados
      const sql = `INSERT INTO registros (name, email, username, password) VALUES (?, ?, ?, ?)`;
      connection.query(sql, [name, email, user, password], (error, result) => {
        if (error) {
          alert("Erro ao inserir o registro no banco de dados:", error);
          res.status(500).send("Erro ao processar o registro.");
        } else {
          alert("Registro inserido com sucesso!");
          res.status(200).send("Registro inserido com sucesso!");
          location.href = "products.html";
        }
        
        // Fecha a conexão com o banco de dados
        connection.end();
      });
    }
  });
});


// Inicia o servidor
app.listen(3300, () => {
  console.log("Servidor em execução na porta 3300");
});


