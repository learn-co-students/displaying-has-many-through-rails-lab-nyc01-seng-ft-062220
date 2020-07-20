class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :apointment_datetime
      t.integer :patient_id
      t.integer :doctor_id
      t.string :department

      t.timestamps
    end
  end
end
