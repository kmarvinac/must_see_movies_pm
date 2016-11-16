class Movie < ApplicationRecord
  # Direct associations

  has_many   :characters,
             :dependent => :destroy

  belongs_to :director

  # Indirect associations

  # Validations

  validates :title, :uniqueness => { :scope => [:year] }

  validates :title, :presence => true

end
