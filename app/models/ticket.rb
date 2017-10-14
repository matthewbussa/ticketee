class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :author, class_name: "User"
  validates :name, :description, presence: true
  validates :description, presence: true, length: {minimum: 10, maximum: 1000}
end
