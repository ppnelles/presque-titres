var generate    = document.getElementById("generate");
var title       = document.getElementById("title");
var twitter     = document.getElementById("twitterbtn");
var randomTitle = "";

// Dictionnaire format obj
// Note: ça pourrait être cool de pouvoir importer/exporter de nouveaux dictionnaires de cette manière
var dico = {
	"ville" : ["Liège", "Amblève", "Marche", "Vielsalm", "Malmedy", "Gerpine", "Charleroi", "Mons", "Verviers", "Amay", "Ostende", 'Namur', "Schaarbeek", "Bruges", "Namur","Charleroi","Groenland","Texas","Pont-à-Celles","Verviers","Molenbeek","Ixelles","Schaerbeek","Saint-Josse","Anvers"],
	"sujet" : ["supporter du standard","supporter d'Anderlecht","unijambiste","nain","chien","Rom","SDF","pédophile","djihadiste","syndicaliste"],
	"verbe" : ["tue","tabasse","vend sur ebay","prostitue","décapite","noie","lapide"],
	"qui" : ["un supporter d'Anderlecht","un unijambiste","un nain","un chien","un Rom","un SDF","un djihadiste","un enfant","une portée de 19 chats","son lézard de compagnie","son mari alcoolique","un homme tronc"],
	"quoi" : ["qui avait mangé ses chips","qui avait bu sa bière", "qui l'avait bousculé dans la rue", "qui l'avait regardé de travers", "qui n'avait rien demandé du tout", "qui attendait le bus", "qui avait raté son train", "à cause de sa femme","qui braquait une banque","parce qu'il est au chômage","pour avoir droit au CPAS","pour entrer au Parti Populaire"],

	"sujet2" : ["il", "un employé", "Jacques", "Julien", "un papy", "François", "le garagiste"],
	"objet" : ["Aidé d'un crucifix","Avec une arbalette","Armé d'une matraque","Muni d'un pied de biche","A l'aide d'une chaise","Avec le nouvel iPhone","Muni d'une clé usb","Avec un cahier Atoma"],

	"accroche" : ["Incroyable !", "Scoop:", "Inimaginable !", "Exclu SudPresque:", "Fou !", "WOW !!", "Actu people:"],
	"people" : ["Barack Obama", "Charles Michel", "Justin Bieber", "Elio Di Rupo", "Bart de Wever", "Maggie de Block", "Jan Jambon", "Raoul Reyers", "Kate Middleton", "Justine Henin", "Nabila", "Michaël Schumacher", "Marc Wilmots", "Steven Defour", "Britney Spears", "Cyril Hanouna", "Kim Kardashian", "Johny Hallyday", "François Hollande", "Sarko", "l'héroïne de Hunger Games"],
	"people_action" : ["s'expose une fois de plus sur Instagram", "dans une sextape choc", "très sexy dans une campagne de pub", "fait son coming out", "publie des selfies coquins", "n'écoute jamais La Première", "se prostitue pour payer sa voiture", "plaque tout par amour pour un adolescent !", "se dévoile dans un penthouse londonien"]
};

function titleRandom() {
	var ville, sujet, sujet2, verbe, objet, qui, quoi, accroche, people, people_action;
	var titleNumber = parseInt((Math.random() * 3) + 1, 10);

	switch (titleNumber) {
		case 1:
			ville = dico.ville[parseInt(Math.random() * dico.ville.length, 10)];
			sujet = dico.sujet[parseInt(Math.random() * dico.sujet.length, 10)];
			verbe = dico.verbe[parseInt(Math.random() * dico.verbe.length, 10)];
			qui   = dico.qui[parseInt(Math.random() * dico.qui.length, 10)];
			quoi  = dico.quoi[parseInt(Math.random() * dico.quoi.length, 10)];

			randomTitle = ville+': un '+sujet+' '+verbe+' '+qui+' '+quoi;
			break;
		case 2:
			sujet2 = dico.sujet2[parseInt(Math.random() * dico.sujet2.length, 10)];
			verbe  = dico.verbe[parseInt(Math.random() * dico.verbe.length, 10)];
			objet  = dico.objet[parseInt(Math.random() * dico.objet.length, 10)];
			qui    = dico.qui[parseInt(Math.random() * dico.qui.length, 10)];
			quoi   = dico.quoi[parseInt(Math.random() * dico.quoi.length, 10)];

			randomTitle = objet+', '+sujet2+' '+verbe+' '+qui+' '+quoi;
			break;
		default:
			accroche      = dico.accroche[parseInt(Math.random() * dico.accroche.length, 10)];
			people        = dico.people[parseInt(Math.random() * dico.people.length, 10)];
			people_action = dico.people_action[parseInt(Math.random() * dico.people_action.length, 10)];

			randomTitle = accroche+' '+people+' '+people_action;
	}

	title.innerHTML = randomTitle;

  var elem = document.getElementById('twitter');

  if (elem != null) {
    elem.parentNode.removeChild(elem);
  }

  var link = document.createElement('a');
  link.setAttribute('href', 'https://twitter.com/share');
  link.setAttribute('class', 'twitter-share-button');
  link.setAttribute('id', 'twitter');
  link.setAttribute("data-text", ""+title.innerHTML+"");
  link.setAttribute("data-via", "presquetitres");
  link.setAttribute("data-counturl", "https://dev.twitter.com/web/tweet-button");
  link.setAttribute("data-count", "vertical");
  link.setAttribute("data-url", "http://presquetitres.be");

  twitter.appendChild(link);

  twttr.widgets.load();
}

window.onload = titleRandom;
generate.onclick = titleRandom;
