require 'pry'

class Backer
    attr_reader :name
    def initialize (name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        ProjectBacker.all.select do |project_instance|
            project_instance.backer == self
        end.map do |project_instance|
            project_instance.project
        end
    end

end