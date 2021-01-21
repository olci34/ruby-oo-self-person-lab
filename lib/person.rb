# your code goes here
require 'pry'
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def happiness=(point)
        @happiness = [point,0,10].sort[1]
    end

    def hygiene=(point)
        @hygiene = [point,0,10].sort[1]
    end

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        people = [self,friend]
        people.each {|person| person.happiness += 3}
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend,topic)
        people = [self, friend]
        case topic
        when "politics"
            people.each {|person| person.happiness -= 2}
            "blah blah partisan blah lobbyist"
        when "weather"
            people.each{|person| person.happiness += 1}
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end