<?php
echo "<body>";
// abre a conexão com o banco de dados
$conn = new PDO('mysql:host=127.0.0.1;port=3306;dbname=sigeco', 'root','Morada@290');

$sql = "SELECT id, codigo, descricao FROM plano_contas";

$result = $conn->query($sql);

if($result) {    
    echo "<label> Conta Financeira </label>";
    echo "<select name = 'id'>";
    while ($row = $result->fetch( PDO::FETCH_ASSOC )) {               
        $check = ($row['id'] == $id) ? 'selected=1' : '';          
        $output .= print "<option $check value = '{$row['id']}' > {$row['codigo']} - {$row['descricao']}</option>";        
    }
    print $output;
echo "</select>";

echo "</body>";
}
?>
