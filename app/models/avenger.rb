class Avenger < ActiveRecord::Base
  attr_accessible :alias, :description, :name, :permalink

  before_create :set_permalink

  def set_permalink
    self.permalink = self.name if self.permalink.blank?
  end
end
