class Ticket < ActiveRecord::Base
  belongs_to :project
  validates :name, :description, presence: true
  validates :description, presence: true, length: {minimum: 10, maximum: 1000}
end
