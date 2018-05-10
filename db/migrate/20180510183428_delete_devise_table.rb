class DeleteDeviseTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :devises
  end
end
