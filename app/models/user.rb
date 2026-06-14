class User < ApplicationRecord
  ISSUE1_ANSWER = "crescimento"

  has_secure_password
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  def check_issue1(answer)
    return false unless answer.strip.downcase == ISSUE1_ANSWER
    update(issue1: true)
    true
  end
end
