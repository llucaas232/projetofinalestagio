const mysql = require('mysql2');

// Configurações de conexão ao banco de dados
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '123456',
  database: 'projeto'
});

// Dados enviados pelo formulário de login
const username = 'nome';
const password = 'senha';

// Estabelecer conexão com o banco de dados
connection.connect((err) => {
  if (err) {
    console.error('Erro ao conectar ao banco de dados: ' + err.stack);
    return;
  }

  console.log('Conexão bem-sucedida ao banco de dados.');

  // Consulta para verificar se o usuário e senha existem na base de dados
  const sql = 'SELECT * FROM registros WHERE username = ? AND password = ?';
  connection.query(sql, [username, password], (err, results) => {
    if (err) throw err;

    if (results.length > 0) {
      console.log('Login bem-sucedido.');
      // Faça aqui as ações necessárias após o login
    } else {
      console.log('Usuário ou senha inválidos.');
      // Faça aqui o tratamento para login inválido
    }
  });

  // Fechar conexão após a consulta
  connection.end();
});
