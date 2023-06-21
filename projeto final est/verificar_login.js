const express = require('express');
const app = express();
const cors = require('cors');
const mysql = require('mysql2');

// Configuração da conexão com o banco de dados
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '123456',
  database: 'projeto',
});

app.use(cors());
app.use(express.json());

app.post('/login', (req, res) => {
  const { user, pass } = req.body;

  // Consulta ao banco de dados para verificar as credenciais
  const query = `SELECT * FROM registros WHERE username = ? AND password = ?`;
  connection.query(query, [user, pass], (error, results) => {
    if (error) {
      console.error(error);
      res.json({ success: false });
      return;
    }

    if (results.length > 0) {
      // Credenciais válidas
      res.json({ success: true });
    } else {
      // Credenciais inválidas
      res.json({ success: false });
    }
  });
});

app.listen(3000, () => {
  console.log('Servidor iniciado na porta 3000');
});
