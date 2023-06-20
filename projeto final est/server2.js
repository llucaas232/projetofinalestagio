const mysql = require('mysql2');

// Configurações de conexão com o banco de dados
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '123456',
  database: 'projeto'
});

// Estabelece a conexão com o banco de dados
connection.connect((err) => {
  if (err) {
    console.error('Erro na conexão com o banco de dados:', err);
    return;
  }
  console.log('Conexão estabelecida com sucesso!');
  
  // Executa a consulta SQL para selecionar todos os produtos
  connection.query('SELECT * FROM products', (err, results) => {
    if (err) {
      console.error('Erro ao executar a consulta:', err);
      return;
    }
    
    // Manipule os dados recebidos e exiba-os na sua página HTML
    // Exemplo: itere sobre os produtos e crie elementos para exibi-los
    results.forEach(products => {
      const elementoProduto = document.createElement('div');
      elementoProduto.innerHTML = `<h3>${products.name}</h3><p>${products.price}</p><p>${products.stock}</p><p>${products.image}</p><p>${products.description}</p><p>${products.whocreated}</p><p>${products.whencreated}</p><p>${products.highlight}</p>`;
      document.body.appendChild(elementoProduto);
    });
    
    // Fecha a conexão com o banco de dados
    connection.end();
  });
});
