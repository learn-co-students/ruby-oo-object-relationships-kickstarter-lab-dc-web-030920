class Backer
    attr_reader :name
    def initialize(name)
        @name = name
    end
    def back_project(project)
        #project argument is an instance of Project class, that has :title 
        #we need to create a ProjectBacker
        ProjectBacker.new(project, self)
    end
    def backed_projects #return all the projects that belong to this instance of Backer
       
        all_projects_of_backer = ProjectBacker.all.select do |instance| #returns an array of projects that belong to backer (self right now)
                                        instance.backer == self # if the instance backer is equal to the backer that we are currently on
                                end
        all_projects_of_backer.collect do |each_instance|
            each_instance.project
        end

        #ProjectBacker.all is an array of all instances of ProjectBacker
        #ProjectBacker attributes are project and backer
    end

end