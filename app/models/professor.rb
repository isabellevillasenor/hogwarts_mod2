class Professor < ApplicationRecord
  has_many :professor_students, dependent: :destroy
  has_many :students, through: :professor_students
  validates_presence_of :name, :age, :specialty

  def self.alpha
    order('name ASC')
  end
end
