<?php
$str_conexao = "dbname=SAB port=5432 user=postgres password=postgres";
if(!($conexao=pg_connect($str_conexao)))
{
	echo "Não houve conexão com o banco de dados!";
	exit;
}
?>
