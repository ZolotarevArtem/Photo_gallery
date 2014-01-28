class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.string :attach_file_name
      t.string :attach_content_type
      t.integer :attach_file_size
      t.datetime :attach_updated_at   
      t.timestamps
    end
  end
end
