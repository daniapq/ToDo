"
ToDo List class
"
Class {
	#name : #ToDoList,
	#superclass : #Object,
	#instVars : [
		'title',
		'items'
	],
	#classVars : [
		'Default'
	],
	#category : #'ToDo-Model'
}

{ #category : #accessing }
ToDoList class >> default [

	^ Default ifNil: [ Default := self new ]
]

{ #category : #initialization }
ToDoList class >> initializeExamples [
	"self initializeExamples"
	
	self default
		title: 'Seaside ToDo';
		add: (ToDoItem new
			title: 'Finish todo app chapter';
			due: '11/15/2007' asDate;
			done: false);
		add: (ToDoItem new
			title: 'Annotate first chapter';
			due: '04/21/2008' asDate;
			done: true);
		add: (ToDoItem new
			title: 'Watch out for UNIX Millenium bug';
			due: '01/19/2038' asDate;
			done: false)
]

{ #category : #accessing }
ToDoList class >> reset [

	Default := nil
]

{ #category : #adding }
ToDoList >> add: aToDoItem [

	self items add: aToDoItem
]

{ #category : #initialization }
ToDoList >> initialize [

	self items: OrderedCollection new.
	self title: 'Seaside ToDo'
]

{ #category : #accessing }
ToDoList >> items [

	^ items
]

{ #category : #accessing }
ToDoList >> items: aCollection [

	items := aCollection
]

{ #category : #adding }
ToDoList >> remove: aToDoItem [

	^ self items remove: aToDoItem
]

{ #category : #removing }
ToDoList >> removeAllToDoItems [

	self items removeAll
]

{ #category : #accessing }
ToDoList >> replace: aToDoItem with: anotherItem [

	self items at: (self items indexOf: aToDoItem) put: anotherItem
]

{ #category : #accessing }
ToDoList >> size [

	^ self items size
]

{ #category : #accessing }
ToDoList >> title [

	^ title
]

{ #category : #accessing }
ToDoList >> title: aString [

	title := aString
]
