# Class controller

#import
require_relative "../classes/entities/person.rb"

#variables

#main
def CreatePerson(name, surname, age, mother, father, isAlive, birth_year, birth_place, isHealthy, job)
    return Person.new(name, surname,age, mother, father, isAlive, birth_year, birth_place, isHealthy, job)
end