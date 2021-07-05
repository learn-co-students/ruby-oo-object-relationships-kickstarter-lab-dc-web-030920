require 'pry'

class Backer 

    attr_reader :name 

    def initialize(name)
        @name = name
    end

    def back_project(project)
        # We need to create a new instance of the project_backer
        ProjectBacker.new(project, self)
    end

    def backed_projects 
        #finding the project that belongs to that backer
        backer_projects = ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
        end 
        #then we map  each instance of backer_projects to get the project 
        backer_projects.map do |project_backer_instance| 
           project_backer_instance.project
        end
    
    end


end