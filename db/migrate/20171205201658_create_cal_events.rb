class CreateCalEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :cal_events do |t|
      t.string :title
      t.text :description
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
