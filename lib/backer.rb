class Backer

  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    self.backed_projects << project
    project.add_backer(self)
  end
 
end

#<Backer:0x007fbee1239cc0 @name="Logan", @backed_projects=[#<Project:0x007fbee1239a90 @title="Awesome Hoverboard", @backers