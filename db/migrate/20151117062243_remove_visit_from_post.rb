class RemoveVisitFromPost < ActiveRecord::Migration
  def change
  	remove_column :posts, :visit, :integer
  end
end
