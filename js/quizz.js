var score = 0;
var userCount = 0;
var twitter = document.getElementById("twitterbtn");

$("#questions input[type='radio']").each(function() {

	$(this).click(function(){
	    var li = $(this).closest("li");

	    if($(this).is(':checked')) { 
	    	
	    	if(($(this).attr("data-validator")) == "aaaaaaarrrrrddddsssxxxxxxx") {
	    		$(li).addClass("win");
	    		score = parseFloat(score) + 1;
	    	}
	    	else {
	    		$(li).addClass("lose");
	    	}

	    }

	    $(li).find('div').remove();
	    $(li).find('p').removeAttr( "style" );
	    userCount = parseFloat(userCount) + 1;

		if(userCount == 10) {

			if(score <= 3) {
				message = "Exécrable, mauvais, archi nul. Tu m'fais honte.";
			}
			else if(score <= 6) {
				message = "Mouais, c'est pas super comme résultat. Va falloir traîner un peu plus sur SudPress.";
			}
			else if(score <= 10) {
				message = "La merde n'a pas de secret pour toi, mais je ne sais pas si je dois te féliciter pour la cause.";
			}

	    	$(".score").text(score);
	    	$(".count").text(userCount);
	    	$(".message").text(message);
	    	var randomTitle = 'Au quizz des @presquetitres, j\'ai réalisé un score de '+score+'/'+userCount+' ! Feras-tu mieux ?';
	    	$(".twitter a").attr("href", "https://twitter.com/intent/tweet?text="+randomTitle+" -&url=http://presquetitres.be/jeu");

	    	$('.final-result').removeAttr( "style" );

	    }

	});

});