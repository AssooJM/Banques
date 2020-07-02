"
Instance Variables
	etat:		à false pour signifier qu'un compte est bloqé et debloquer pour true
	montant:		la somme d'un compte
	numero:		le numero d'identification du compte


    Implementation Points
"
Class {
	#name : #Compte,
	#superclass : #Object,
	#instVars : [
		'numero',
		'montant',
		'etat'
	],
	#category : #Banques
}

{ #category : #operation }
Compte >> debloquer [ 
	self etat: true 
]

{ #category : #getters }
Compte >> etat [
"permet de savoir si un compte est fermer ou pas "
	^ etat
]

{ #category : #accessing }
Compte >> etat: aBoolean [
"Lorque l etat est à false, le compte est bloqué et à true , il est ouvert"
	etat := aBoolean
]

{ #category : #operation }
Compte >> fermer [ 
	self etat: false 
]

{ #category : #initalize }
Compte >> initialize [
	  montant:= 0.
	  numero:= 0.
	  etat:= true
]

{ #category : #getters }
Compte >> montant [
	^ montant
]

{ #category : #accessing }
Compte >> montant: aNumber [
	montant := aNumber
]

{ #category : #getters }
Compte >> numero [
	^ numero
]

{ #category : #accessing }
Compte >> numero: aNumber [
	numero:= aNumber 
]
