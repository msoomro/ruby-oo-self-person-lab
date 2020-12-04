require 'pry'

class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    MAX_HAPPINESS = 10
    MIN_HAPPINESS = 0
    MAX_HYGIENE = 10
    MIN_HYGIENE = 0
    HAPPY = 7
    CLEAN = 7
    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness
        @happiness = MAX_HAPPINESS if @happiness > MAX_HAPPINESS
        @happiness = MIN_HAPPINESS if @happiness < MIN_HAPPINESS
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        @hygiene = MAX_HYGIENE if @hygiene > MAX_HYGIENE
        @hygiene = MIN_HYGIENE if @hygiene < MIN_HYGIENE
    end

    def get_paid (salary)
        self.bank_account = @bank_account + salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation (friend, topic)
        case topic
        
        when "politics"
            self.happiness = @happiness - 2
            friend.happiness = friend.happiness - 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness = @happiness + 1
            friend.happiness = friend.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"

        end
    end

    def happy?
        @happiness > HAPPY
    end

    def clean?
        @hygiene > CLEAN
    end

end