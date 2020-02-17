class CreateTrendingDevs < ActiveRecord::Migration[5.2]
  def change
    create_table :trending_devs do |t|

      t.timestamps
    end
  end
end
