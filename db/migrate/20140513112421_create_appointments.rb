class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :room_number
      t.float :duration
      t.string :symptom

      t.belongs_to :doctor
      t.belongs_to :patient

      t.timestamps
    end
  end
end
