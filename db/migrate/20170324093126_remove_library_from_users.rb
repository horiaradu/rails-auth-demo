class RemoveLibraryFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_reference :users, :library, foreign_key: true
  end
end
