
class Backer

    attr_reader :name
    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
       all_backed_projects= ProjectBacker.all.select do |instance| 
        instance.backer == self
       end
        all_backed_projects.collect do |instance|
            instance.project
        end
    end

end