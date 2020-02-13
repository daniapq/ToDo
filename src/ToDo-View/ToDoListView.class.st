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

{ #category : #accessing }
ToDoListView >> model [

	^ ToDoList default
]

{ #category : #rendering }
ToDoListView >> renderContentOn: html [

	html heading: self model title.
	html unorderedList: [ 
		self renderItemsOn: html ]
]

{ #category : #rendering }
ToDoListView >> renderItem: anItem on: html [ 

	html listItem
		class: 'done' if: anItem isDone;
		class: 'overdue' if: anItem isOverdue;
		with: anItem title
]

{ #category : #rendering }
ToDoListView >> renderItemsOn: html [

	self model items
		do: [ :each |
			self renderItem: each on: html ]
]

{ #category : #hooks }
ToDoListView >> style [

	^ 'body {
			color: #222;
			font-size: 75%;
			font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
		}
		h1 {
			color: #111;
			font-size: 2em;
			font-weight: normal;
			margin-bottom: 0.5em;
		}
		ul {
			list-style: none;
			padding-left: 0;
			margin-bottom: 1em;
		}
		li.overdue {
			color: #8a1f11;
		}
		li.done {
			color: #264409;
		}'
]
