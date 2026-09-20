class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :answers

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  validates :name, presence: true

  def points
    answers.count
  end

  def has_answered?(question)
    answers.exists?(question: question)
  end
end
