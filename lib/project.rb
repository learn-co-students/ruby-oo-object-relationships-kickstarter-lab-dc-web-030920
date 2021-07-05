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

        #finding the project_backer where project is equals to self
            projects_by_backers = ProjectBacker.all.select  do |project_backer_instance|
            project_backer_instance.project == self
            end

            # Find the backers that are associated with this instance of the project
            projects_by_backers.map {|project_backer_instance|  project_backer_instance.backer}

    end

end