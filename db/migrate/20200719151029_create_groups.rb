class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.boolean :friends
      t.boolean :family
      t.boolean :co_worker

      t.timestamps
    end
  end
end
