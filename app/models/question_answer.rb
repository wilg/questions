class QuestionAnswer < ActiveRecord::Base

  belongs_to :question
  belongs_to :answer

  def self.import_csv(path)
    require 'csv'
    CSV.foreach(File.expand_path(path), headers: true) do |row|
      puts row.to_hash.to_s
      QuestionAnswer.create(id: row["id"], answer_id: row["object_id"], question_id: row["question_id"], value: row["value"].to_i)
    end
  end

end
