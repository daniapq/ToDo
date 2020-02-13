Class {
	#name : #ToDoListTest,
	#superclass : #TestCase,
	#instVars : [
		'first',
		'toDoItem',
		'toDoList'
	],
	#category : #'ToDo-Tests'
}

{ #category : #running }
ToDoListTest >> setUp [

	super setUp.
	
	toDoList := ToDoList default.
	toDoList removeAllToDoItems.

	first := (ToDoItem new 
		title: 'Wake Up';
		due: '12/11/2020' asDate;
		done: false).
		
	toDoItem := (ToDoItem new 
		title: 'Drink Milk';
		due: Date today;
		done: true).
		
	toDoList add: toDoItem
	
]

{ #category : #running }
ToDoListTest >> tearDown [

	ToDoList reset.
	super tearDown
]

{ #category : #tests }
ToDoListTest >> testAddItem [

	toDoList add: toDoItem.
	self assert: toDoList size equals: 2
]

{ #category : #tests }
ToDoListTest >> testGetItems [

	self assert: toDoList size equals: 1
]

{ #category : #tests }
ToDoListTest >> testRemoveAllToDoItems [

	toDoList removeAllToDoItems.
	self assert: toDoList size equals: 0
]

{ #category : #tests }
ToDoListTest >> testRemoveItem [

	toDoList add: toDoItem.
	self assert: toDoList size equals: 2.
	toDoList remove: toDoItem.
	self assert: toDoList size equals: 1
]
