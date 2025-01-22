/*

Your challenge is this: make a class hierarchy for animals, starting
with Animal at the top, then Dog and Cat as subclasses,
then Corgi and Poodle as subclasses of Dog, and Persian and
Lion as subclasses of Cat.

But there’s more:

The Animal class should have a legs integer property that tracks how many legs the animal has.
The Dog class should have a speak() method that prints a generic dog barking string, but each of the
subclasses should print something slightly different.
The Cat class should have a matching speak() method, again with each subclass printing something different.
The Cat class should have an isTame Boolean property, provided using an initializer.

*/

class Animal {
 let legs: Int
}

class Dog: Animal {
 let name: String
 let race: String

 init(name: String, legs: Int) {
  self.name = name
  super.init(legs: legs)
 }

 func speak() {
  print("Bark!")
 }
}

class Cat: Animal {
 let isTame: Bool
 var name: String

 init(name: String, isTame: Bool, legs: Int) {
  self.name = name
  self.isTame = isTame
  super.init(legs: legs)
 }

 func speak() {
  print("Miau!")
 }
}

class Corgi: Dog {
 init(name: String, legs: Int) {
  super.init(name: name)
  super.init(legs: legs)
 }

 override func speak() {
  print("Barrrrk Bark!")
 }

}

class Poodle: Dog {
init(name: String, legs: Int) {
  super.init(name: name)
  super.init(legs: legs)
 }

 override func speak() {
  print("Berk Berk!")
 }
}

class Persian: Cat {
init(name: String, legs: Int) {
  super.init(name: name)
  super.init(legs: legs)
 }

 override func speak() {
  print("Miiiiiau!")
 }
}

class Lion: Cat {
init(name: String, legs: Int) {
  super.init(name: name)
  super.init(legs: legs)
 }

 override func speak() {
  print("Lion roar...")
 }
}