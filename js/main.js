var generate = document.getElementById("generate");
var title = document.getElementById("title");
var randomTitle = "";
var twitter = document.getElementById("twitter");

//faits divers initialement créé
var dico_ville = ["Liège", "Amblève", "Marche", "Vielsalm", "Malmedy", "Gerpine", "Charleroi", "Mons", "Verviers", "Amay", "Ostende", 'Namur', "Schaarbeek", "Bruges", "Namur","Charleroi","Groenland","Texas","Pont-à-Celles","Verviers","Molenbeek","Ixelles","Schaerbeek","Saint-Josse","Anvers"];
var dico_sujet = ["supporter du standard","supporter d'Anderlecht","unijambiste","nain","chien","Rom","SDF","pédophile","djihadiste","syndicaliste"];
var dico_verbe = ["tue","tabasse","vend sur ebay","prostitue","décapite","noie","lapide"];
var dico_qui = ["un supporter d'Anderlecht","un unijambiste","un nain","un chien","un Rom","un SDF","un djihadiste","un enfant","une portée de 19 chats","son lézard de compagnie","son mari alcoolique","un homme tronc"];
var dico_quoi = ["qui avait mangé ses chips","qui avait bu sa bière", "qui l'avait bousculé dans la rue", "qui l'avait regardé de travers", "qui n'avait rien demandé du tout", "qui attendait le bus", "qui avait raté son train", "à cause de sa femme","qui braquait une banque","parce qu'il est au chômage","pour avoir droit au CPAS","pour entrer au Parti Populaire"];

//second faits divers
var dico_sujet2 = ["il", "un employé", "Jacques", "Julien", "un papy", "François", "le garagiste"];
var dico_objet = ["Aidé d'un crucifix","Avec une arbalette","Armé d'une matraque","Muni d'un pied de biche","A l'aide d'une chaise","Avec le nouvel iPhone","Muni d'une clé usb","Avec un cahier Atoma"];

//actu people
var dico_accroche = ["Incroyable !", "Scoop:", "Inimaginable !", "Exclu SudPresque:", "Fou !", "WOW !!", "Actu people:"];
var dico_people = ["Barack Obama", "Charles Michel", "Justin Bieber", "Elio Di Rupo", "Bart de Wever", "Maggie de Block", "Jan Jambon", "Raoul Reyers", "Kate Middleton", "Justine Henin", "Nabila", "Michaël Schumacher", "Marc Wilmots", "Steven Defour", "Britney Spears", "Cyril Hanouna", "Kim Kardashian", "Johny Hallyday", "François Hollande", "Sarko", "l'héroïne de Hunger Games"];
var dico_people_action = ["s'expose une fois de plus sur Instagram", "dans une sextape choc", "très sexy dans une campagne de pub", "fait son coming out", "publie des selfies coquins", "n'écoute jamais La Première", "se prostitue pour payer sa voiture", "plaque tout par amour pour un adolescent !", "se dévoile dans un penthouse londonien"];

function titleRandom() {

	var ville = dico_ville[Math.floor(Math.random() * dico_ville.length)];
	var sujet = dico_sujet[Math.floor(Math.random() * dico_sujet.length)];
	var sujet2 = dico_sujet2[Math.floor(Math.random() * dico_sujet2.length)];
	var verbe = dico_verbe[Math.floor(Math.random() * dico_verbe.length)];
	var objet = dico_objet[Math.floor(Math.random() * dico_objet.length)];
	var qui = dico_qui[Math.floor(Math.random() * dico_qui.length)];
	var quoi = dico_quoi[Math.floor(Math.random() * dico_quoi.length)];	
	var accroche = dico_accroche[Math.floor(Math.random() * dico_accroche.length)];	
	var people = dico_people[Math.floor(Math.random() * dico_people.length)];	
	var people_action = dico_people_action[Math.floor(Math.random() * dico_people_action.length)];	

	var titleNumber = Math.floor((Math.random() * 3) + 1);

	if(titleNumber == 1) {
		randomTitle = ville+': un '+sujet+' '+verbe+' '+qui+' '+quoi;
	}
	else if(titleNumber == 2) {
		randomTitle = objet+', '+sujet2+' '+verbe+' '+qui+' '+quoi;
	}
	else if(titleNumber == 3) {
		randomTitle = accroche+' '+people+' '+people_action;
	}


	title.innerHTML = randomTitle;
	twitter.href="https://twitter.com/intent/tweet?text="+randomTitle+" -&url=http://presquetitres.be";
    
}

window.onload = titleRandom;
generate.onclick = titleRandom;