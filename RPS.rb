require "pry"

class RockPaperScissors

def winner(p1,p2)
        @p1 = p1
        @p2 = p2

        # p = (@p1[1,1]+@p2[1,1]).sort
        p = (@p1[1]+@p2[1]).sort
        # ...

        rules = Hash.new(0)
        rules = {"PR"=>"R","PS"=>"S", "RS"=>"R", "PP"=>"1","RR"=>"1","SS"=>"1"}

        if rules["#{p}"]=="1"
            return @p1

        else
            puts @p1[1,1]
            puts rules["#{p}"]
            # @p1[1,1]==rules["#{p}"]?@p1:@p2
            @p1[1]==rules[p]?@p1:@p2
        end
end

end
t = RockPaperScissors.new
print t.winner(['Armando','R'], ['Dave','S'])
