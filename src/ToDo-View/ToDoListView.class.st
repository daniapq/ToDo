"
ToDo List View Component
"
Class {
	#name : #ToDoListView,
	#superclass : #WAComponent,
	#category : #'ToDo-View'
}

{ #category : #'class initialization' }
ToDoListView class >> initialize [

	WAAdmin register: self asApplicationAt: 'todo'
]
