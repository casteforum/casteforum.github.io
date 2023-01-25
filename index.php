<?php
include_once "Methods/PageBuilder.php";
session_start();
$pagebuilder = new PageBuilder();
if (isset($_GET['page'])){
	if ($_GET['page'] == 'qr') {
		$pagebuilder->PageQR();
	} else if ($_GET['page'] == 'gqr') {
		$pagebuilder->QrCode();
	} else if ($_GET['page'] == 'modr') {
		$pagebuilder->ModReg();
	} else if ($_GET['page'] == 'mod') {
		$pagebuilder->PageMod();
	} else if ($_GET['page'] == 'mod1') {
		$pagebuilder->PageMod(1);
	} else if ($_GET['page'] == 'spref') {
		$pagebuilder->ShowPref();
	} else if ($_GET['page'] == 'h') {
		$pagebuilder->Home(false);
	} else if ($_GET['page'] == 'reg') {
		$pagebuilder->Register();
	} else if ($_GET['page'] == 'cred') {
	 $pagebuilder->Crediti();
 	} else if ($_GET['page'] == 'auth') {
		$pagebuilder->Auth();
	} else if ($_GET['page'] == 'logout') {
		session_destroy();
		header('Location: /');
	} else {
		$pagebuilder->Home();
	}
} else {
	$pagebuilder->Home();
}
?>
