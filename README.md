# Banques
gestion de Banque en Smalltalk 
Trois classes princapales sont implémentées
- Banque qui contient la liste des clients et celles des comptes 
  * la banque peut bloquer et debloquer le compte d'un client
  * elle assigne un à un client , un compte
 - La classe Compte contient le montant du compte et le numero
 - La classe Client elle, a un nom, un iedentifiant unique, et est lié à un seule compte
  * il peut retirer de l'argent dans un compte
  * deposer de l'argent
  * tranferer de son argent à un autre compte
 il ya aussi deux classes (basée sur le compte et client)de tests qui functionnent bien
- Exemple d'utilisation
Dès que le projet est deploié sur pharo, ouvrez votre playground et ecrivrez ceci
*  |b ass mey elise jacky co |
 b:= Banque new.
 co:= Compte new montant: 60000000.
 ass:= Client new. 
ass nom: 'ASSOO Jean Marie'.
 b creerCompte: co client: ass. 
* ass depot: 500000 .

co:= Compte new montant: 40000000. 
elise:= Client new.
 elise nom: 'Mbengone Elise'.
 b creerCompte: co client: elise. 
ass transferer: 2000000 a: elise.
* "Arretez-vous ici"
" Essayons de reinitialiser l'intance de Banque pour voir si le singleton que nous y avons appliqué fonctionne"
b:= Banque new.

co:= Compte new montant: 200000000.
 mey:= Client new.
 mey nom: 'Meyobeme Jean Dieudonné'. 
b creerCompte: co client: mey.

co:= Compte new montant: 100000000. 
jacky:= Client new.
 jacky nom: 'Mballa Jacky'.
 b creerCompte: co client: jacky.
 jacky transferer: 500000 a: elise .

b fermerCompte: mey .
 mey transferer: 300000 a: elise .
 b
 * "Vous realisez que la liste de client à augmentée donc, notre singleton fonctionne bien"
  
