<?php
include 'gerador_senha.php';
//obtém os valores 
$username = $_POST["username"];
$senha = $_POST["senha"];
//acesso ao banco
include "Conecta_pg.inc"
//$resultado = pg_query("SELECT * FROM usuarios where username='$username'");
$sql= "SELECT * FROM usuarios where username='$username'";
$resultado = pg_query($conexao,$sql);
$linhas = pg_num_rows ($resultado);
if($linhas==0)//testa o retorno de registros
{
	echo "<html><body>";
	echo "<p align=\"center\">Usuário não encontrado!</p>";
	echo "<p align=\"center\"><a href=\"login.html\">Voltar</a></p>";
	echo "</body></html>";
}
else
{
	if ($senha != pg_result($resultado,0,"senha"))//cofere a senha
	{
		echo "<html><body>";
		echo "<p align=\"center\">A senha está inconrreta!</p>";
		echo "<p align=\"center\"><a href=\"login.html\">Voltar</a></p>";
		echo "</body></html>";
	}
	else // usuário e senha corretos. Criar cookies
	{
		setcookie("nome_usuario", $username);
		setcookie("senha_usuario", $senha);
		//página cadastrados
		header("Location: pagina_inicial.php");
	}
}
pg_close($conexao);
?>
