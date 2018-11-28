<?php 

class Contas extends Conexao {
	// metodo para fazer login
	public function setLogged($agencia,$conta,$senha){

		$pdo = parent::get_instance();

		$sql = "SELECT * FROM contas WHERE agencia = :agencia AND conta = :conta AND senha = :senha";
		
		$sql = $pdo->prepare($sql);
		$sql->bindValue(":agencia", $agencia);
		$sql->bindValue(":conta", $conta);
		$sql->bindValue(":senha", $senha);
		$sql->execute();
		// Verificar se ouve resultado (se for maior que 0)
		if($sql->rowCount() > 0){
			$sql = $sql->fetch();

			$_SESSION['login'] = $sql['id'];
			header("Location: ../index.php?login_success");
			exit;
		} else {
			header("location: ../login.php?not_login");
		}

	}
}

?>