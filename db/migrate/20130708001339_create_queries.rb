class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.text :store
      t.timestamps
    end
  end
end
