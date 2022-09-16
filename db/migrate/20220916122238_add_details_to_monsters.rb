class AddDetailsToMonsters < ActiveRecord::Migration[7.0]
  def change
    add_column :monsters, :private, :boolean
    add_column :monsters, :birthdate, :datetime
  end
end
