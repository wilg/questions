class Question < ActiveRecord::Base

  has_many :question_answers

  def self.import_csv(path)
    require 'csv'
    CSV.foreach(File.expand_path(path), headers: true) do |row|
      puts row.to_hash.to_s
      Question.create(id: row["id"], text: row["text"])
    end
  end

end
