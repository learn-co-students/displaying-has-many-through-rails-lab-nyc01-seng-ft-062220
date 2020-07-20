class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :appointments, :apointment_datetime, :appointment_datetime
  end
end
