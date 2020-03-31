class Movie < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :image_url
  validates_presence_of :start_date
  validates_presence_of :end_date
  has_many :reservations
end
