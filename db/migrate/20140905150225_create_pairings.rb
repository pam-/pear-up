class CreatePairings < ActiveRecord::Migration
  def change
    create_table :pairings do |t|
    	t.references :user
    	t.string :message

    	t.timestamps
    end
  end
end
