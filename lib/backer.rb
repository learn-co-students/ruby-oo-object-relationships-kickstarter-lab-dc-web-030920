class Backer 
    attr_reader :name
    # attr_accessor

    def initialize (name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        bp = ProjectBacker.all.select{ |project_backer_instances| project_backer_instances.backer == self }
        
        bp.map do |project_backer_instances|
             project_backer_instances.project
            #  binding.pry
        end
      

    end

end