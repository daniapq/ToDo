Class {
	#name : #ToDoItemTest,
	#superclass : #TestCase,
	#instVars : [
		'toDoItem'
	],
	#category : #'ToDo-Tests'
}

{ #category : #running }
ToDoItemTest >> setUp [

	super setUp.
	toDoItem := ToDoItem new title: 'Wake Up';
		done: false;
		due: Date today
]

{ #category : #running }
ToDoItemTest >> tearDown [

	toDoItem := nil.
	super tearDown
]

{ #category : #tests }
ToDoItemTest >> testGetDone [

	self assert: toDoItem done equals: false
]

{ #category : #tests }
ToDoItemTest >> testGetDue [

	self assert: toDoItem due equals: Date today
]

{ #category : #tests }
ToDoItemTest >> testIsDone [

	self assert: toDoItem isDone equals: false
]

{ #category : #tests }
ToDoItemTest >> testIsOverdue [

	self assert: toDoItem isOverdue equals: false.
	toDoItem due: Date yesterday.
	self assert: toDoItem isOverdue equals: true
]

{ #category : #tests }
ToDoItemTest >> testSetDone [

	toDoItem done: true.
	self assert: toDoItem done equals: true
]

{ #category : #tests }
ToDoItemTest >> testSetDue [

	toDoItem due: (Date fromString: '07/22/2020').
	self assert: toDoItem due equals: (Date fromString: '07/22/2020')
]
