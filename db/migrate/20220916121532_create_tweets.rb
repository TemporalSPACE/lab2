class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.text :texto
      t.references :monster, null: false, foreign_key: true

      t.timestamps
    end
  end
end
