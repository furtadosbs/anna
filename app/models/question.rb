class Question < ApplicationRecord
  belongs_to :stage
  has_many :options
  has_many :answer
end
