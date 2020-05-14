class Event < ApplicationRecord
  validates :start_date, uniqueness: true
  validates :end_date, uniqueness: true
end
