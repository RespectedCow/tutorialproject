# This program is Launcher of the program
# Made by RespectedCow#5338 via discord or secretivemoo@gmail.com

# Imports
require_relative '../app/scripts/controllers/person_controller.rb'

#main

#Functions
def make_story(you)
    puts "Warning This story may be offensive, continue?(y/n)"
    continue = gets.chomp

    if continue === "y"
        puts "Loading Story"

        puts "One day, a person called #{you.name} went to his 9 to 5 #{you.age} job. After a while, he goes back home to take care of his parents #{you.mother} and #{you.father}. The disappointment on his parents face is a constant reminder of his failure. "
        puts "As he is walking through the streets of #{you.birth_place}, he can't help but wonder how the hell it lost it's greenery so damn fast. An hour goes by. No two hours go by. He walks home to his girlfriend because his too broke to afford a car."
        if you.isHealthy
            puts "Once he goes back home, his girlfriend walks up to him and says that his too broke. She leaves him in dispair as he sit down in his overdue apartment wondering what life has in store for him."
        else
            puts "You snap out of it. You don't even have a girlfriend. Your too unhealthy and worst of all, your broke. You sit on your 1 room apartment wondering what life has in store for you."
        end
    elsif continue === "n"
        puts "Ending"
        return
    end
end

def make_new_person_with_player_input
    #visuals
    puts "Making a new person with player input"
    puts "Loading questions"
    puts "Loaded"

    #main
    puts "What's your name(put skip if you want default value: Dumb)" # Name
    name = gets.chomp

    if name === "skip"
        name = "Dumb"
    end

    puts "What's your surname(put skip if you want default value: Cena)" # Surname
    surname = gets.chomp

    if surname === "skip"
        surname = "Cena"
    end

    puts "What's your age(put skip if you want default value: 100)" # age
    age = gets.chomp

    if age === "skip"
        age = 100
    else
        age = age.to_i
    end

    puts  "Who's your mother(put skip if you want default value: Britney Spears):" # mother
    mother = gets.chomp

    if mother === "skip"
        mother = "Britney Spears"
    end

    puts "Who's your father(put skip if you want default value: John Cena):" # father
    father = gets.chomp

    if father === "skip"
        father = "John Cena"
    end

    puts "Are you alive(put skip if you want default value: true)true or false:"
    isAlive = gets.chomp

    if isAlive === "skip"
        isAlive = true
    elsif isAlive === "true"
        isAlive = true
    elsif isAlive === "false"
        isAlive = false
    end

    puts "What is your birth year(put skip if you want default value: 1920):"
    birth_year = gets.chomp

    if birth_year === "skip"
        birth_year = 1920
    else
        birth_year = birth_year.to_i
    end

    puts "What is your birth place(put skip if you want default value: Moscow):"
    birth_place = gets.chomp

    if birth_place === "skip"
        birth_place = "Moscow"
    end

    puts "Are you healthy(put skip if you want default value: false) true or false:"
    isHealthy = gets.chomp

    if isHealthy === "skip"
        isHealthy = false
    elsif isHealthy === "true"
        isHealthy = true
    elsif isHealthy === "false"
        isHealthy = false
    end

    puts "What is your job(put skip if you want default value: Useless)"
    job = gets.chomp

    if job === "skip"
        job = "Useless"
    end

    you = CreatePerson(name, surname,age, mother, father, isAlive, birth_year, birth_place, isHealthy, job)
    make_story(you)
end

make_new_person_with_player_input()