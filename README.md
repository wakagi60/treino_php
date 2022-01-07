# Preencher um select com Banco de dados Mysql e PHP

- Crie um banco de dados no Mysql ou MariaDB;

- Altere o usuário e a senha no programa PHP (__combo_php1.php__) para que a conexão com o banco de dados ocorra com sucesso;

- Execute o script do banco de dados (plano_contas.sql) para criar a tabela plano_contas;

- Execute o programa combo_php1.php no seu localhost para visualizar o resultado;

- No seu navegador deve aparecer, como na figura abaixo:

  ![image-20220107141643234](C:\Users\wakagi\AppData\Roaming\Typora\typora-user-images\image-20220107141643234.png)

  

  

  ## Possíveis erros na criação da tabela plano_contas

  * Se ocorrer algum erro na criação da tabela, caso o Banco de dados, não for Mysql ou  MariaDB, altere a configuração do  charset, **ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; **para **ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;**

  

  

  

  

  

  

  

  

  

  

  

  