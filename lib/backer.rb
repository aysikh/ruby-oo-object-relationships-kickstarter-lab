require 'pry'

class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # project_array = ProjectBacker.all
        joint_array = []
        ProjectBacker.all.each do |projects_and_backers|
            if projects_and_backers.backer == self
                joint_array << projects_and_backers.project
            end
            # binding.pry
        end
        joint_array
    end
end