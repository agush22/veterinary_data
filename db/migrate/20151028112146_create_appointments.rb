class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date_visit
      t.references :pet, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true
      t.boolean :reminder
      t.text :reason

      t.timestamps null: false
    end
  end
end
