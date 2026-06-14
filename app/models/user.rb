class User < ApplicationRecord
  ISSUE1_ANSWER = "crescimento"
  ISSUE2_ANSWER = "nao_melanoma"

  has_secure_password
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  def check_issue1(answer)
    return false unless answer.strip.downcase == ISSUE1_ANSWER
    update(issue1: true)
    true
  end

  def check_issue2(answer)
    return false unless answer.strip.downcase == ISSUE2_ANSWER
    update(issue2: true)
    true
  end
end
