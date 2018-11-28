<?php

session_start();

include_once "../model/connect.class.php";
include_once "../model/Contas.class.php";

$contas = new Contas();
// passando paramentros
$agencia = addslashes($_POST['agencia']);
$conta = addslashes($_POST['conta']);
$senha = md5($_POST['senha']);
// se existir alguma coisa digitada em conta e se não estiver vazio
if(isset($_POST['conta']) && !empty($_POST['conta'])){
	// executa esse metodo
	$contas->setLogged($agencia,$conta,$senha);
}

 ?>
