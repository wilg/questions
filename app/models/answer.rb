class Answer < ActiveRecord::Base

  has_many :question_answers

  def self.import_csv(path)
    require 'csv'
    CSV.foreach(File.expand_path(path), headers: true) do |row|
      puts row.to_hash.to_s
      Answer.create(id: row["id"], text: row["name"])
    end
  end

end
