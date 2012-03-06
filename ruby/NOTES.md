_Days 1 & 2_

* Everything except ```nil``` or ```false``` is false
* && (and) || (or) have short circuit evaluation, to do full eval you can use & and |
* strongly typed (get an error when types mismatch in a bad way)
  * behaves like this most of the time, but u can classes around to defeat type safety, so not quite
* duck typing - related to interfaces in that you code to interface, not to implementation
  * no java type interface, but loose interface by method name??

_Day 3_

* Notation for method_missing has changed since the book was written
  * Book says def self.method_missing...
  * _1.8.7_ def	method_missing(name, [*args])
  * in 1.8.7 it is part of Kernel class
* define_method is a private instance method of Module
* module class methods are never included (with include, extends) into class that use the module
* two ways to use modules
  * includes - all instance methods of the module become instance methods of the class
  * extends - all instance methods of the module become class methods of the class
* class methods are written using
  * def self.classMethodName
  * def MyClass.classMethodName
* in the docs, SomeClass.method is a class method, SomeClass#method is an instance method
