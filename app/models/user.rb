class User < ApplicationRecord
  ISSUE1_ANSWER = "crescimento"
  ISSUE2_ANSWER = "nao_melanoma"
  ISSUE3_ANSWER = "melanoma"
  ISSUE4_ANSWER = "sol"
  ISSUE5_ANSWER = "mancha"
  ISSUE6_ANSWER = "pele"
  ISSUE7_ANSWER = "fps_30"
  ISSUE8_ANSWER = "2_horas"
  ISSUE9_ANSWER = "chapeu_roupas"
  ISSUE10_ANSWER = "sim"
  ISSUE11_ANSWER = "sim"
  ISSUE12_ANSWER = "nao"
  ISSUE13_ANSWER = "irregular"
  ISSUE14_ANSWER = "varias_cores"
  ISSUE15_ANSWER = "mudar"

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

  def check_issue9(answer)
    return false unless answer.strip.downcase == ISSUE9_ANSWER
    update(issue9: true)
    true
  end

  def check_issue10(answer)
    return false unless answer.strip.downcase == ISSUE10_ANSWER
    update(issue10: true)
    true
  end

  def check_issue11(answer)
    return false unless answer.strip.downcase == ISSUE11_ANSWER
    update(issue11: true)
    true
  end

  def check_issue12(answer)
    return false unless answer.strip.downcase == ISSUE12_ANSWER
    update(issue12: true)
    true
  end

  def check_issue13(answer)
    return false unless answer.strip.downcase == ISSUE13_ANSWER
    update(issue13: true)
    true
  end

  def check_issue14(answer)
    return false unless answer.strip.downcase == ISSUE14_ANSWER
    update(issue14: true)
    true
  end

  def check_issue15(answer)
    return false unless answer.strip.downcase == ISSUE15_ANSWER
    update(issue15: true)
    true
  end
end
