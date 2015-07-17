class Arena
    def initialize(name)
        @name = name.capitalize!
        @gladiators = []
    end
    def add_gladiator(gladiator)
        if @gladiators.count < 2
            @gladiators.push(gladiator)
        end
    end
    def name
        return @name
    end
    def gladiators
        return @gladiators
    end
    def fight
        # if @gladiators.count == 0
        #     return nil
        if @gladiators.count == 2
            if @gladiators.first.weapon == @gladiators.last.weapon
                @gladiators.delete_at(1)
                @gladiators.delete_at(0)

            elsif @gladiators.first.weapon == "Trident"
                if @gladiators.last.weapon == "Spear"
                    @gladiators.delete_at(1)
                else
                    @gladiators.delete_at(0)
                end
            elsif @gladiators.first.weapon == "Spear"
                if @gladiators.last.weapon == "Club"
                     @gladiators.delete_at(1)
                 else
                    @gladiators.delete_at(0)
                end
            elsif @gladiators.first.weapon == "Club"
                if @gladiators.last.weapon == "Trident"
                    @gladiators.delete_at(1)
                else
                   @gladiators.delete_at(0)
               end


            end
        end
    end
end


# class Person
#     attr_reader @name
#     def initialize(name)
#         @name = name
#     end
# end
#
# class Squad
#     def initialize(name)
#         @name = name
#         @students = []
#     end
#
#     def add_student(student)
#     @students.push(student)
#     end
#
#     def students
#         return @students
#     end
# end
#
# walter = Person.new("walter")
# robert = Person.new("Robert")
# ada = Squad.new("Ada")
# ada.add_student.walter
# ada.add_student.robert
