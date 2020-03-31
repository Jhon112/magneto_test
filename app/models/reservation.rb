class Reservation < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :cedula
  belongs_to :movie
end
