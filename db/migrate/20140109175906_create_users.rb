class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :nickname
      t.string :provider
      t.string :url
      t.string :image
      t.string :uid

      t.timestamps
    end
  end
end
