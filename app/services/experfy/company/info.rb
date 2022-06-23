class Experfy::Company::Info < ApplicationService
  attr_accessor :cp_id # career portal id

  def initialize(cp_id)
    self.cp_id = cp_id
  end

  def call
    return nil if self.cp_id.blank?

    begin
      {}
    rescue
      nil
    end
  end
end