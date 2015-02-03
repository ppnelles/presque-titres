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

// $questions = mysql_query("set names 'utf8'");
// $getQuestions = "SELECT * FROM questions ORDER BY RAND() LIMIT 10";
// $questions = getdatas($getQuestions);
//$questions = utf8_encode($questions);

$questionsTrue = mysql_query("set names 'utf8'");
//$questionsFalse = mysql_query("set names 'utf8'");
$getQuestionsTrue = "SELECT * FROM questions WHERE answer=1 ORDER BY RAND() LIMIT 5";
$questionsTrue = getdatas($getQuestionsTrue);
$getQuestionsFalse = "SELECT * FROM questions WHERE answer=0 ORDER BY RAND() LIMIT 5";
$questionsFalse = getdatas($getQuestionsFalse);

$questions =  array_merge($questionsFalse, $questionsTrue);
$questions = shuffle_assoc($questions);

?>
