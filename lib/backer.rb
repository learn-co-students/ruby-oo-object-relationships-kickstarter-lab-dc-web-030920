class Backer

    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        halfway_array = ProjectBacker.all.select do |projectbacker_instance|
            projectbacker_instance.backer == self
        end
        
        halfway_array.map do |projects| projects.project
        end
    end

end
