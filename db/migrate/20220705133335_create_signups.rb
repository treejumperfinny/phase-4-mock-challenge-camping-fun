class CreateSignups < ActiveRecord::Migration[6.1]
  def change
    create_table :signups do |t|
      t.belongs_to :camper
      t.belongs_to :activity
      t.integer :time
      t.timestamps
    end
    add_belongs_to :signups, :camper
    add_belongs_to :signups, :activity
  end
end
