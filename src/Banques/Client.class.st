"
Instance Variables
	compte:		contient l'instance de la classe Compte
	id:		 l'identifiant unuique d'un client
	nom:		le nom su client


    Implementation Points
peut :
	retirer de l'argent dans un compte,
	deposer de l'argent dans un compte,
	transferer de l'argent dans le compte d'un client

"
Class {
	#name : #Client,
	#superclass : #Object,
	#instVars : [
		'id',
		'nom',
		'compte'
	],
	#category : #Banques
}

{ #category : #accessing }
Client >> compte [
	^ compte
]

{ #category : #accessing }
Client >> compte: uncompte [
	compte := uncompte
]

{ #category : #operation }
Client >> consulterCompte [
	^ self compte montant 
]

{ #category : #operation }
Client >> debloquer [
	self compte etat: true  
]

{ #category : #operation }
Client >> depot: aNumber [
	self compte etat
		ifFalse: [Transcript show: 'Votre compte est bloqué'.
			 ^ false ].
	aNumber < 1
		ifTrue: [ ^ false ]
		ifFalse: [ self compte montant: self compte montant + aNumber.
			^ true ]
]

{ #category : #operation }
Client >> fermer [
	self compte etat: false 
]

{ #category : #accessing }
Client >> id [
	^ id
]

{ #category : #accessing }
Client >> id: anObject [
	id := anObject
]

{ #category : #initialize }
Client >> initialize [ 
	super initialize.
	  nom:= ''.
	  id:= 0.
	  compte:= nil
]

{ #category : #accessing }
Client >> nom [
	^ nom
]

{ #category : #accessing }
Client >> nom: anObject [
	nom := anObject
]

{ #category : #operation }
Client >> retirer:aNumber [
  ( self compte etat) ifFalse: [ Transcript show: 'Votre compte est fermé';cr.
	^false ].
	(aNumber <1)
		ifTrue: [ ^false ]
		ifFalse: [ 
			(self compte montant > aNumber )
			ifFalse: [ Transcript show: 'Solde insuffisant';cr.
				^false]
			ifTrue:[
				(self compte) montant:(self compte  montant - aNumber).
				^true
				]	 
			]
	

]

{ #category : #operation }
Client >> transferer:aNumber a: unClient [
( self compte etat) ifFalse: [ Transcript show: 'Votre compte est fermé';cr.
	^false ].
	(aNumber <1)
		ifTrue: [ ^false ]
		ifFalse: [ 
				(self retirer: aNumber) 
					ifTrue: [
						(unClient depot: aNumber)
								ifTrue: [^true]
								ifFalse: [ ^false ]
						]	
					]
]
