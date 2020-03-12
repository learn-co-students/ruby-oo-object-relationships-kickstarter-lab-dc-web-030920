class Project
    attr_reader :title
    # attr_accessor
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end


    def backers 
        bpi = ProjectBacker.all.select{ |bpi | bpi.project == self }
        
        bpi.map do |bpi |
             bpi.backer
            #  binding.pry
        end
      

    end

end