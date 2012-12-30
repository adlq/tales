class Tale < ActiveRecord::Base
  attr_accessible :body, :title, :published

  validates :title, presence: true
end
