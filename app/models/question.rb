class Question < ApplicationRecord
  belongs_to :stage
  has_many :options
end
