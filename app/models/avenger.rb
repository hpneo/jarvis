class Avenger < ActiveRecord::Base
  attr_accessible :alias, :description, :name, :permalink

  has_many :tasks

  before_create :set_permalink

  def set_permalink
    self.permalink = self.name.parameterize if self.permalink.blank?
  end

  def as_json(options = {})
    options ||= {}

    options[:only] ||= [:id, :alias, :description, :name, :permalink]
    options[:methods] ||= [:tasks]

    super(options)
  end
end
