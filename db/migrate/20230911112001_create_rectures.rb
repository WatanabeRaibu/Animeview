class CreateRectures < ActiveRecord::Migration[6.1]
  def change
    create_table :rectures do |t|
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
