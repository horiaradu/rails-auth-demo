class AddLibraryToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :library, foreign_key: true
  end
end
