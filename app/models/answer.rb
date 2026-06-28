class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validate :correct?

  private

  def correct?
    errors.add(:value, "Resposta Incorreta") unless self.value == question.correct_value
  end
end
