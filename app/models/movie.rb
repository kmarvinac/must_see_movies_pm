class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director

  # Indirect associations

  # Validations

  validates :title, :uniqueness => { :scope => [:year] }

  validates :title, :presence => true

end
