Class {
	#name : #CompteTest,
	#superclass : #TestCase,
	#category : #Banques
}

{ #category : #tests }
CompteTest >> testDebloquer [
"Test de deblockage de compte. voyons si l'etat du compte est à true"
	self assert: Compte new debloquer etat equals: true
]

{ #category : #tests }
CompteTest >> testFermer [
	"Test de fermeture de compte. voyons si l'etat du compte est à false"
	self assert: Compte new fermer etat equals: false
]
