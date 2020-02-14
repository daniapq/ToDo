# ToDo List example in Seaside

This Web application is a example of how to use Seaside3 in Pharo.

## Installation

### Prerequisites

* Latest Pharo 8 image
* Pharo VM for Pharo 8

To load the ToDo package into the Pharo image:

```Smalltalk
Metacello new
 baseline:'ToDo';
 repository: 'github://daniapq/ToDo:master/src';
 load.
```
