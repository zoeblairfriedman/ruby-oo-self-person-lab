# class Person
#     attr_reader :name
#     attr_accessor :bank_account, :happiness, hygiene
#     def initialize(name)
#         @name = name
#         @bank_account = 25
#         @happiness = 8
#         @hygiene = 8
        
#     end
    
#     def hygiene
#         @hygiene = [@hygiene, 0, 10].sort[1]
#     end
    
#     def happiness
#         @happiness = [@happiness, 0, 10].sort[1]
#     end
    


class Person
attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account
def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    
end

def hygiene=(hygiene)
    @hygiene = [hygiene, 0, 10].sort[1]
end

def happiness=(happiness)
    @happiness = [happiness, 0, 10].sort[1]
end

def clean?
    @hygiene > 7
end

def happy?
    @happiness > 7
end

def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
end

def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
end

friend = Person.new(name)

def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{@name}. How are you?"
end

def start_conversation(friend, topic)
    if topic == "politics"
        self.happiness -= 2
        friend.happiness -=2
        return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness += 1
        friend.happiness += 1
        return "blah blah sun blah rain"
    else
        return "blah blah blah blah blah" 
    end
end


end