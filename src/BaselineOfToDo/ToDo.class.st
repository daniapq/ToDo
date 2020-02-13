Class {
	#name : #ToDo,
	#superclass : #BaselineOf,
	#category : #BaselineOfToDo
}

{ #category : #baselines }
ToDo >> baseline: spec [

	<baseline>
	
	spec
		for: #common
		do: [ 
			spec
				package: 'ToDo-Model';
				package: 'ToDo-Tests' ]
]
