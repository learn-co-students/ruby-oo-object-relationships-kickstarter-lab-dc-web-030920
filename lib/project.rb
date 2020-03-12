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
        halfway_array = ProjectBacker.all.select { |project_instance| 
        project_instance.project == self}

        halfway_array.map { |backer_instance| backer_instance.backer}
    end
    

end