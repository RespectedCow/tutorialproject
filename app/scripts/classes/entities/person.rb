# Ruby class file
class Person
    attr_accessor :name, :surname, :age, :mother, :father, :isAlive, :birth_year, :birth_place, :isHealthy, :job

    def initialize(name, surname, age, mother, father, isAlive, birth_year, birth_place, isHealthy, job)
      @name = name
      @surname = surname
      @age = age
      @mother = mother
      @father = father
      @isDead = isAlive
      @birth_year = birth_year
      @birth_place = birth_place
      @isHealthy = isHealthy
      @job = job
    end
end

# Person.new("John", "Cena", 19, "Jennifer", "Jimmy", true, 2009, "Kota Kinabalu", true, "Programmer")