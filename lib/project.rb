class Project
    attr_reader :title
    # attr_accessor
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        pbi_clean = ProjectBacker.all.select do |pbi|
            pbi.project == self
        end
        pbi_clean.map do |pbi|
            pbi.backer
        end
    end

end