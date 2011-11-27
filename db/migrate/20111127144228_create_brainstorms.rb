class CreateBrainstorms < ActiveRecord::Migration
  def change
    create_table :brainstorms do |t|
      t.string :title
      t.date :date
      t.datetime :start
      t.datetime :end
      t.string :description
      t.integer :no_people
      t.integer :no_ideas
      t.string :color

      t.timestamps
    end
  end
end
