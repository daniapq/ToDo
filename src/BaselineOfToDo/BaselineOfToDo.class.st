"
Baseline of ToDo application
"
Class {
	#name : #BaselineOfToDo,
	#superclass : #BaselineOf,
	#category : #BaselineOfToDo
}

{ #category : #baselines }
BaselineOfToDo >> baseline: spec [

	<baseline>
	
	spec
		for: #common
		do: [ 
			spec
				package: 'ToDo-Model';
				package: 'ToDo-Tests' ]
]
