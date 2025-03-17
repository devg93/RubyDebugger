class CreateErrorLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :error_logs do |t|
      t.string :service_name
      t.string :debug_message
      t.string :error_type
      t.string :error_line
      t.string :meta_data
      t.timestamps
    end
  end
end
