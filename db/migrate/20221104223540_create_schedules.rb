class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :begin_time
      t.datetime :end_time
      t.string :subject
      t.text :description

      t.timestamps
    end
  end
end
