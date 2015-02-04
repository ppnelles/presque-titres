<?php 



DEFINE ('LOGIN', 'root');
DEFINE ('PASS', 'root');
DEFINE ('HOST', 'localhost');
DEFINE ('DB', 'questions');

$link = mysql_connect(HOST, LOGIN, PASS) or die ('Impossible de se connecter au serveur');
$succes = mysql_select_db(DB) or die ('Impossible de sélectionner la db');

function shuffle_assoc($list) { 
  if (!is_array($list)) return $list; 

  $keys = array_keys($list); 
  shuffle($keys); 
  $random = array(); 
  foreach ($keys as $key) { 
    $random[$key] = $list[$key]; 
  }
  return $random; 
}

function getDatas($sql) 
	{
		$result = mysql_query($sql);
		$datas = array();
		
		while ($data = mysql_fetch_assoc($result))
				{
					$datas[] = $data;
				}
		return $datas;
	}

function randomQuestions() {

	for ($i = 1; $i <= 5; $i++) {
		$questions[] =  $_SESSION['questionsTrue'][$i];
		$questions[] =  $_SESSION['questionsFalse'][$i];
		$questions = shuffle_assoc($questions);
	}

	return $questions;
}


/* 
	WHERE THE MAGIC HAPPENS
	Récupérer les questions de la db et les foutres en sessions pour éviter les queries 
*/

if(isset($_SESSION['questionsTrue']) or isset($_SESSION['questionsFalse'])) {
	$questions = randomQuestions();
}

else {

	$_SESSION['questionsTrue'] = mysql_query("set names 'utf8'");
	$_SESSION['questionsFalse'] = mysql_query("set names 'utf8'");
	
	$getQuestionsTrue = "SELECT * FROM questions WHERE answer=1 ORDER BY RAND()";
	$_SESSION['questionsTrue'] = getdatas($getQuestionsTrue);
	
	$getQuestionsFalse = "SELECT * FROM questions WHERE answer=0 ORDER BY RAND()";
	$_SESSION['questionsFalse'] = getdatas($getQuestionsFalse);

	$questions = randomQuestions();

}

?>
