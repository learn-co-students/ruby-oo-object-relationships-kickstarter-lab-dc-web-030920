require 'pry'
class Backer
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        pb = ProjectBacker.new(project,self)
    end

    def backed_projects
        ProjectBacker.all.select{ |backed_proj| 
       backed_proj.backer == self
        }.map{|bp| bp.project}
        
    end
end