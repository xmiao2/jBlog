class ChangeVisitColumnDefault < ActiveRecord::Migration
  def change
  	change_column_default :posts, :visit, 0
  end
end
