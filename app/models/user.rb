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
  ISSUE16_ANSWER = "sim"
  ISSUE17_ANSWER = "sim"
  ISSUE18_ANSWER = "evitar_sol"
  ISSUE19_ANSWER = "saude_bem_estar"
  ISSUE20_ANSWER = "amor_proprio"
  ISSUE21_ANSWER = "evitar_problemas"

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

  def check_issue16(answer)
    return false unless answer.strip.downcase == ISSUE16_ANSWER
    update(issue16: true)
    true
  end

  def check_issue17(answer)
    return false unless answer.strip.downcase == ISSUE17_ANSWER
    update(issue17: true)
    true
  end

  def check_issue18(answer)
    return false unless answer.strip.downcase == ISSUE18_ANSWER
    update(issue18: true)
    true
  end

  def check_issue19(answer)
    return false unless answer.strip.downcase == ISSUE19_ANSWER
    update(issue19: true)
    true
  end

  def check_issue20(answer)
    return false unless answer.strip.downcase == ISSUE20_ANSWER
    update(issue20: true)
    true
  end

  def check_issue21(answer)
    return false unless answer.strip.downcase == ISSUE21_ANSWER
    update(issue21: true)
    true
  end
end
