class Portal::PortalCreator < ApplicationService
  attr_accessor :params

  def initialize(params)
    self.params = params  
  end

  def call
    create_portal
  end

  def create_portal
    debugger
    portal = Portal.new(self.params)
    
  end
end