class Query < ActiveRecord::Base

  store :store, accessors: [:questions], coder: JSON

  after_create do
    add_question!(Question.first)
  end

  def add_question!(question)
    q = self.questions || []
    q << {question_id: question.id, value: nil}
    self.questions = q
    self.save!
  end

  def answer_question!(question, value)
    q = self.questions || []
    q.each_with_index do |item, i|
      item = item.with_indifferent_access
      if item[:question_id] == question.id
        q[i] = {question_id: question.id, value: value}
      end
    end
    self.questions = q
    self.save!
  end

end
