class Employee < ActiveRecord::Base
  belongs_to :store
  validates :hourly_rate, numericality: {greater_than: 40, less_than: 200}
end
