<?php
include("db.php");
?>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Le quizz des "Presque Titres" de presse</title>
        <meta name="description" content="5 faux titres se sont glisser dans cette liste d'articles. Sauras-tu les repérer ?">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="http://fonts.googleapis.com/css?family=Questrial%7CMontserrat:400,700" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="../css/main.css?v=3">
    </head>
    <body class="quizz">
    	<nav class="top">
    		<a href="http://presquetitres.be/">Générateur de Presque Titres</a>
    		<a href="https://www.facebook.com/pages/Le-g%C3%A9n%C3%A9rateur-de-Presque-Titres/1745427352349685">Facebook</a>
    		<a href="https://twitter.com/presquetitres">Twitter</a>
    	</nav>

    	<header class="intro">
    		<div>
	    		<h1>Le quizz des "Presque Titres"</h1>
	    		<p>
	    			Es-tu incollable sur l'actu de la presse-poubelle ? Si dessous, tu trouveras 10 titres de presse. 5 sont des articles publiés sur des sites belges, les autres sortent de notre esprit dérangé. Sauras-tu différencier le vrai du faux ?
	    		</p>
    		</div>
    	</header>

		<form action="#" method="get">
			<ol id="questions">
				<?php 
					$i=1;
					foreach ($questions as $question) {  ?>
					<li>
						<h2><?php echo $question['name']; ?></h2>
						<div class="answers">
							<span class="true">
								<input type="radio" value="Vrai" data-validator="<?php if($question['answer'] == 1) { echo 'aaaaaaarrrrrddddsssxxxxxxx';} else { echo 'aaaaaaarrrrdddddsssxxxxxxx'; } ?>" name="result[<?php echo $i; ?>][answer]" id="answer-<?php echo $i; ?>-true" value="Vrai">
								<label for="answer-<?php echo $i; ?>-true" >Vrai article</label>
							</span>
							<span class="false">
								<input type="radio" value="Faux" data-validator="<?php if($question['answer'] == 0) { echo 'aaaaaaarrrrrddddsssxxxxxxx';} else { echo 'aaaaaaarrrrdddddsssxxxxxxx'; } ?>" name="result[<?php echo $i; ?>][answer]" id="answer-<?php echo $i; ?>-false" value="Faux">
								<label for="answer-<?php echo $i; ?>-false">Grosse arnaque</label>
							</span>
						</div>
						<p class="correction" style="display:none">
							<?php if($question['answer'] == 1) { ?>
								Cet article est <a target="_blank" href="<?php echo $question['link']; ?>" title="Consultez cet article si vous avez 5min à perdre...">paru dans la presse</a>.
							<?php } else { ?>
								Cet article a été inventé de toutes pièces.
							<?php } ?>
						</p>
					</li>
					<?php $i++; } ?>
			</ol>
		</form>

		<div class="final-result" style="display:none;">
			<h2>Ton score est de <span class="score">0</span>/<span class="count">0</span></h2>
			<p class="message"></p>
		    <ul class="share">
		    	<li class="twitter">
		    		<a target="_blank" id="twitter" href="https://twitter.com/intent/tweet?text=MON_TEXTE&url=MON_URL" title="Partager mon titre sur Twitter">Tweet ton titre !</a>
		    	</li>
		    	<li class="facebook">
		    		<a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=http://presquetitres.be/jeux" title="Partager cette page sur Facebook">Partage sur Facebook !</a>
		    	</li>
		    </ul>
		</div>

		<div class="action">
			<a class="more" href="./index.php" title="Créer des nouvelles questions et rejouez">Rejouer !</a>
		</div>

    	<nav class="bottom">
    		<div class="author">
    			<a href="http://ppnelles.com" title="L'auteur de toutes ces conneries">Réalisé par ppnelles</a>
    		</div>
    		<div class="project">
    			<a href="http://presquetitres.be/">Générateur de Presque Titres</a>
    			<a href="https://www.facebook.com/pages/Le-g%C3%A9n%C3%A9rateur-de-Presque-Titres/1745427352349685">Facebook</a>
    			<a href="https://twitter.com/presquetitres">Twitter</a>
    			<a href="https://github.com/ppnelles/presque-titres" title="On attends vos Pull Requests !">Fork on GitHub</a>
    		</div>
    	</nav>

		<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
		<script src="../js/quizz.js"></script>
		  
    </body>
</html>