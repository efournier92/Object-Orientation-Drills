##Object Orientation Drills

This is an exercise I undertook while studying with Launch Academy in Boston. I allowed me to practice building models according to supplied tests, which drove the entire development.

Overall, this exercise increased my understanding of:
* Building Objects in Ruby
* Object Composition
* Class Inheritance
* Test Driven Development

##Models
####`Zoo`
* Initialize Requirements:
  * zoo_name
  * season_opening_date
  * season_closing_date
* Instance Methods:
  * `add_employee`
    * adds new employee name to `employees array`
  * `open?`
    * checks whether or not zoo is currently open
  * `add_animal`
    * adds animal to first open cage in `cages` array
  * `visit`
    * outputs a string with greetings from each employee, and each animal

####`Employee`
* Initialize Requirements:
  * `name`
  * `title` (defaults to 'Zoo Keeper')
* Instance Methods:
  * `full_title`
    * outputs string with employee's name and title
  * `greet`
    * outputs greeting from employee

####`Cage`
* Instance Methods:
  * `empty?`
    * tests whether or not cage is occupied

####`Fox`
* Initialize Requirements:
  * name
* Instance Methods:
  * `speak`
    * outputs what the animal says

####`Gorilla`
* Initialize Requirements:
  * name
* Instance Methods:
  * `speak`
    * outputs what the animal says

####`Python`
* Initialize Requirements:
  * name
* Instance Methods:
  * `speak`
    * outputs what the animal says
* Inherits from `reptile` class
