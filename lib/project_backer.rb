require "pry"
class ProjectBacker
    attr_reader :project, :backer
    # attr_acessor
    @@all = []

    def initialize(project, backer)
        # binding.pry
        @project = project
        @backer = backer
        @@all << self
    end

    def self.all
        @@all
    end
end