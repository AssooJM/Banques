"
Internal Representation and Key Implementation Points.

    Instance Variables
	clientList:		est la liste des clients de l'entreprise(elle est de type OrderedCollection )
	compteList:		est la liste des compte de l'entreprise(elle est de type OrderedCollection )


    Implementation Points
"
Class {
	#name : #Banque,
	#superclass : #Object,
	#instVars : [
		'clientList',
		'compteList'
	],
	#classVars : [
		'instance'
	],
	#category : #Banques
}

{ #category : #'instance creation' }
Banque class >> new [
	instance  isNil 
		ifTrue: [ instance := self basicNew initialize  ].
		^instance 
]

{ #category : #accessing }
Banque >> clientList [
	^ clientList
]

{ #category : #accessing }
Banque >> clientList: unClient [
	 clientList addFirst: unClient
]

{ #category : #accessing }
Banque >> compteList [
	^ compteList
]

{ #category : #accessing }
Banque >> compteList: unCompte [
	  compteList addFirst: unCompte
]

{ #category : #operation }
Banque >> creerCompte: unCompte client: unClient [
	| compte client banque tail|
	banque := self .
	client := unClient.
	compte := unCompte.

	client compte: compte.
	self compteList: compte.
	self clientList: client.
	tail := self clientList size.
	(tail=1)
		ifTrue: [ client  id: (banque clientList at: 1 )id + 1 ]
		ifFalse: [ client  id: (banque clientList at: 2 )id + 1 ].
	tail := self compteList size.
	(tail=1)
		ifTrue: [ compte  numero: (banque compteList at: 1 )numero + 1 ]
		ifFalse: [ compte  numero: (banque compteList at: 2 )numero + 1]
		
 
 
	
	 
]

{ #category : #operation }
Banque >> debloquerCompte: aThing [
	aThing debloquer  
]

{ #category : #operation }
Banque >> fermerCompte: aThing [
	aThing fermer 
]

{ #category : #initalize }
Banque >> initialize [ 
	"comment stating purpose of message"
		super initialize.
		 compteList:= OrderedCollection new.
		  clientList:= OrderedCollection new 
]
