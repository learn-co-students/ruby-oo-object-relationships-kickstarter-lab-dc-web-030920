require 'pry'
class Project 
    
    attr_reader :title

    def initialize(title)
        @title = title
    end
    
    def add_backer(backer)
        ProjectBacker.new(self, backer) 
    end

    def backers 
        var =  ProjectBacker.all.select do|instance|
            instance.project  == self
        end
        var.map {|instance| instance.backer}
    end
end