class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string    :text
      t.integer   :times_played, null: false, default: 0
      t.datetime  :last_played_at
      t.timestamps
    end
  end
end
