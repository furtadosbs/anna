class User < ApplicationRecord
  ISSUE1_ANSWER = "crescimento"
  ISSUE2_ANSWER = "nao_melanoma"
  ISSUE3_ANSWER = "melanoma"
  ISSUE4_ANSWER = "sol"
  ISSUE5_ANSWER = "mancha"
  ISSUE6_ANSWER = "pele"
  ISSUE7_ANSWER = "fps_30"
  ISSUE8_ANSWER = "2_horas"

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

  def check_issue3(answer)
    return false unless answer.strip.downcase == ISSUE3_ANSWER
    update(issue3: true)
    true
  end

  def check_issue4(answer)
    return false unless answer.strip.downcase == ISSUE4_ANSWER
    update(issue4: true)
    true
  end

  def check_issue5(answer)
    return false unless answer.strip.downcase == ISSUE5_ANSWER
    update(issue5: true)
    true
  end

  def check_issue6(answer)
    return false unless answer.strip.downcase == ISSUE6_ANSWER
    update(issue6: true)
    true
  end

  def check_issue7(answer)
    return false unless answer.strip.downcase == ISSUE7_ANSWER
    update(issue7: true)
    true
  end

  def check_issue8(answer)
    return false unless answer.strip.downcase == ISSUE8_ANSWER
    update(issue8: true)
    true
  end
end
