class Project

    attr_accessor :backers, :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select{|backer| backer.project == self}
    end


end