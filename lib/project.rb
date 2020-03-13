
class Project
    
    attr_reader :title

    def initialize(title)
        @title = title
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers # returns an array of backers that belong to this project
        
        var = ProjectBacker.all.select do |instance| 
             instance.project  == self
            end
        
        var.map {|each_instance| each_instance.backer}

    end

end