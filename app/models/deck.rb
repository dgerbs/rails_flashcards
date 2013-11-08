class Deck < ActiveRecord::Base
  has_many :cards
  validates_presence_of :name
end