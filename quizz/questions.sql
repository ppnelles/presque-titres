-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Mar 03 Février 2015 à 19:52
-- Version du serveur :  5.5.38
-- Version de PHP :  5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `questions`
--

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
`questionid` int(10) unsigned NOT NULL,
  `link` tinytext NOT NULL,
  `name` text NOT NULL,
  `answer` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `questions`
--

INSERT INTO `questions` (`questionid`, `link`, `name`, `answer`) VALUES
(1, '', 'Mons: un supporter du standard tabasse un anderlechtois qui avait bu sa bière', 0),
(2, 'http://www.lesoir.be/773750/article/actualite/regions/liege/2015-01-31/liege-dealer-presume-unijambiste-avait-l-heroine-dans-sa-canne', 'Liège: le dealer unijambiste cachait la drogue dans sa canne', 1),
(16, '', 'Bien que sobre, le fakir avale un sabre et décède en pleine représentation', 0),
(17, 'http://www.sudinfo.be/1203195/article/2015-02-02/un-ancien-power-ranger-arrete-il-a-tue-son-colocataire-avec-une-epee-apres-une-d', 'Un ancien "Power Ranger" arrêté: il a tué son colocataire avec une épée après une dispute', 1),
(18, 'http://www.sudinfo.be/1203469/article/2015-02-02/une-demoiselle-d-honneur-defiguree-lors-de-la-fete-de-mariage-une-invitee-l-a-fr', 'Une demoiselle d''honneur défigurée lors de la fête de mariage: une invitée l''a frappée au visage avec un verre', 1),
(19, 'http://www.sudinfo.be/1200968/article/2015-01-29/le-camionneur-avait-viole-deux-prostituees-sur-une-machine-en-forme-de-crucifix', 'Le camionneur avait violé deux prostituées sur une machine en forme de crucifix et leur avait demandé de coter ses performances', 1),
(20, '', 'Gosselie: un élu PS passe à tabac le bourgmestre MR en plein conseil communal (vidéo)', 0),
(21, '', 'Un père tue sa fille après avoir découvert qu''elle avait tourné dans un film érotique', 0),
(22, 'http://www.sudinfo.be/1200368/article/2015-01-28/je-vais-t-eclater-ton-gros-bidon-une-femme-enceinte-de-8-mois-se-fait-agresser-p', '"Je vais t''éclater ton gros bidon": une femme enceinte de 8 mois se fait agresser par une autre et personne ne lui vient en aide', 1),
(23, 'http://www.sudinfo.be/1200092/article/2015-01-28/une-femme-condamnee-pour-des-relations-sexuelles-avec-l-ex-petit-ami-de-sa-fille', 'Une femme condamnée pour des relations sexuelles avec l''ex-petit ami de sa fille', 1),
(24, '', 'Trois Djihadistes postent des photos d''eux entrain de sodomiser une chèvre', 0),
(25, 'http://www.sudinfo.be/1199876/article/2015-01-28/une-etudiante-japonaise-supprime-a-la-hache-une-retraitee-j-avais-simplement-env', 'Une étudiante japonaise supprime à la hâche une retraitée: "J''avais simplement envie de tuer..."', 1),
(26, '', 'Il déféquait depuis 3 ans sur le palier de sa voisine: 2 mois de prison ferme', 0),
(27, 'http://www.sudinfo.be/1199990/article/2015-01-28/va-te-pendre-ecrit-une-eleve-a-marion-13-ans…-et-l-adolescente-s-est-pendue-apre', '"Va te pendre", écrit une élève à Marion, 13 ans… et l''adolescente s''est pendue après des mois de harcèlement', 1),
(28, '', 'Namur: attaqué par son pitbull, il perd ses organes génitaux', 0),
(29, 'http://www.sudinfo.be/1199095/article/2015-01-27/elle-s-endort-dans-le-rer-et-se-reveille-en-train-de-se-faire-violer', 'Elle s''endort dans le RER et se réveille en train de se faire violer', 1),
(30, '', 'L''horreur: en rentrant chez lui, il découvre sa femme entrain de se faire violée', 0),
(31, 'http://www.sudinfo.be/1197544/article/2015-01-25/une-nonne-se-plaint-de-maux-de-ventre-elle-decouvre-qu-elle-est-en-train-d-accou', 'Une nonne se plaint de maux de ventre: elle découvre qu''elle est en train d''accoucher', 1),
(32, '', 'Ce curé de 65 ans a reconnu être le père de 6 enfants', 0),
(33, 'http://www.sudinfo.be/1195549/article/2015-01-22/un-nouveau-ne-abandonne-a-la-vie-sauve-grace-a-un-chat-errant', 'Un nouveau-né abandonné a la vie sauve grâce à un chat errant', 1),
(34, 'http://www.sudinfo.be/1190710/article/2015-01-15/tellement-bourre…-qu-il-fait-bugger-l-ethylotest', 'Tellement bourré… qu''il fait bugger l''éthylotest', 0),
(35, '', 'Il évite l''éthylotest en offrant un Quick au policier', 0),
(36, 'http://www.sudinfo.be/1193591/article/2015-01-19/controle-par-deux-fois-positif-a-l-alcool-l-agent-sncb-est-reintegre', 'Contrôlé par deux fois positif à l''alcool, l''agent SNCB est réintégré', 1),
(37, '', 'Alcoolique, ce chauffeur du TEC roule depuis 20 ans en état d''ébriété', 0),
(38, 'http://www.sudinfo.be/1186636/article/2015-01-09/une-auto-fonce-sur-deux-belges-qui-quittaient-une-manifestation-de-soutien-a-cha', 'Une auto fonce sur deux Belges qui quittaient une manifestation de soutien à Charlie Hebdo', 1),
(39, '', 'Deux soeurs accouchent à 2h d''intervalle... du même père !', 0),
(40, 'http://www.sudinfo.be/1202340/article/2015-01-31/un-homme-vole-le-placenta-de-sa-femme-qui-vient-d-accoucher', 'Un homme vole le placenta de sa femme qui vient d''accoucher', 1),
(41, 'http://www.sudinfo.be/1182588/article/2015-01-04/forville-une-dame-de-84-ans-menottee-et-violee-le-jour-du-reveillon-de-noel-alor', 'Forville: une dame de 84 ans menottée et violée le jour du réveillon de Noël alors qu''elle plaçait de la tarte dans le frigo', 1),
(42, '', 'Maredsous: Alcool aidant, le bal rhéto tourne à la partouze', 0),
(43, '', 'Il vend son iPhone 6 pour s''offrir un rein', 0),
(44, 'http://www.lavenir.net/article/detail.aspx?articleid=DMF20150202_00596019', 'Le gang des shampooings appréhendé ?', 1),
(45, 'http://www.lavenir.net/article/detail.aspx?articleid=DMF20150201_00595139', 'Sauvagement tabassé', 1),
(46, '', 'Un Modavien grièvement blessé par un SDF', 0),
(47, '', 'Sous ecstasy, il tente de vendre de la drogue aux policiers', 0),
(48, 'http://www.sudinfo.be/1181470/article/2015-01-02/lyceen-sans-abri-c-est-faire-ses-devoirs-a-l-abri-bus', 'Lycéen sans-abri, c''est "faire ses devoirs à l''abri-bus"', 1),
(49, 'http://www.sudinfo.be/1181171/article/2015-01-02/l-horreur-aux-usa-un-jeune-americain-decapite-sa-mere-a-la-hache', 'L''horreur aux USA: un jeune Américain décapite sa mère à la hache', 1),
(50, '', 'Un verviétois décapite un musulman à la hache', 0),
(51, '', 'Elle promène son bébé dans une cage de transport pour chien (vidéo)', 0),
(52, 'http://www.sudinfo.be/1181068/article/2015-01-01/la-photo-qui-choque-cette-maman-se-balade-avec-son-bebe…-coince-dans-son-sac-a-m', 'La photo qui choque: cette maman se balade avec son bébé… coincé dans son sac à main', 1),
(53, 'http://www.sudinfo.be/1180947/article/2015-01-01/haarlem-il-passe-le-nouvel-an-avec-une-balle-dans-la-tete', 'Haarlem: il passe le Nouvel An avec... une balle dans la tête', 1),
(54, '', 'Charleroi: il se tire une balle dans le pied durant une soirée... mais continue de faire la fête jusqu''au petit matin', 0),
(55, 'http://www.sudinfo.be/1180872/article/2015-01-01/arras-l-infirmier-qui-a-abattu-trois-personnes-avant-de-se-suicider-aurait-mal-a', 'Arras: l''infirmier qui a abattu trois personnes avant de se suicider aurait mal accepté sa séparation avec sa compagne (vidéo)', 1),
(56, 'http://www.sudinfo.be/1180442/article/2014-12-31/autriche-la-maison-brule-et-le-chat-sauve-la-famille', 'Autriche: la maison brûle et... le chat sauve la famille!', 1),
(57, '', 'Enfermé depuis 3 jours dans sa cave, il est sauvé par le chien du voisin', 0),
(58, 'http://www.sudinfo.be/118-8/article/2014-12-31/ils-braquent-le-pizza-hut-de-deurne-et-s-enfuient-en-taxi', 'Ils braquent le Pizza Hut de Deurne et s''enfuient en taxi', 1),
(59, '', 'Ils braquent la friterie locale et s''enfuient en vélo', 0),
(60, 'http://www.sudinfo.be/1180069/article/2014-12-30/pas-tres-malin-d-essayer-de-manger…-un-verre-video', 'Pas très malin d''essayer de manger… un verre! (vidéo)', 1),
(61, '', 'Cet homme essaye de manger du verre... et se vide de son sang (vidéo)', 0),
(62, 'http://www.sudinfo.be/1176322/article/2014-12-23/un-restaurant-ferme-par-la-police-apres-que-des-rats-ont-ete-vus-mangeant-des-pi', 'Un restaurant fermé par la police après que des rats ont été vus mangeant des pizzas tranquillement (vidéo)', 1),
(63, '', 'Client d''un restaurant chinois, il trouve une patte de chat dans son assiette (vidéo)', 0),
(64, '', 'Son Aixam "tunée" peut rouler à plus de 120 km/h (vidéo)', 0),
(65, 'http://www.sudinfo.be/1176199/article/2014-12-23/un-chien-refuse-de-quitter-son-maitre-emmene-par-une-ambulance-apres-un-malaise', 'Un chien refuse de quitter son maître emmené par une ambulance après un malaise et court derrière le véhicule (vidéo)', 1),
(66, 'http://www.sudinfo.be/1175656/article/2014-12-22/apres-une-chute-une-dame-agee-reste-bloquee-6-jours-dans-sa-baignoire-avant-d-et', 'Après une chute, une dame âgée reste bloquée 6 jours dans sa baignoire avant d''être secourue grâce à une factrice', 1),
(67, '', 'Elle tombe dans les escaliers et se casse les deux jambes: elle souffrira pendant 6 heures avant d''être secourue', 0),
(68, '', 'Un ancien acteur de "Bioman" arrêté pour proxénétisme', 0),
(69, 'http://www.lanouvellegazette.be/1204227/article/2015-02-03/charleroi-quatre-ans-requis-contre-un-homme-qui-a-viole-sa-maitresse-avec-une-qu', 'Charleroi: quatre ans requis contre un homme qui a violé sa maîtresse avec une queue de billard', 1),
(70, '', 'Amay: trois ans de prison pour avoir violer sa maîtresse avec une raquette de tennis.', 0),
(71, 'http://faitsdivers.blogs.sudinfo.be/archive/2015/02/03/un-couple-s-envoie-en-l-air-dans-le-bureau-d-une-compagnie-d-assurance-phot.html', 'Un couple s’envoie en l’air dans le bureau d’une compagnie d’assurance (photo)', 1),
(72, '', 'Liège: Filmés entrain de faire l''amour à trois dans les toilettes d''un café du carré', 0),
(73, 'http://faitsdivers.blogs.sudinfo.be/archive/2015/02/03/la-nounou-met-la-couche-culotte-dans-la-bouche-du-bebe-puis-138548.html', 'La nounou met la couche-culotte dans la bouche du bébé, puis le bâillonne', 1),
(74, 'http://www.sudinfo.be/1204176/article/2015-02-03/il-ne-supporte-pas-le-film-diffuse-sur-tf1-et-tabasse-sa-femme', 'Il ne supporte pas le film diffusé sur TF1 et... tabasse sa femme', 1),
(75, '', 'Mons: Il envoie sa femme dans le coma car elle ne voulait pas regarder Koh-Lanta', 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
 ADD PRIMARY KEY (`questionid`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
MODIFY `questionid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
