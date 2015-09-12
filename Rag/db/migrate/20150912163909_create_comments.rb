class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_name
      t.string :title
      t.string :comment
      t.belongs_to :location

      t.timestamps null: false
    end
  end
end
