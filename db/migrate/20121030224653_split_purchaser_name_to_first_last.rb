class SplitPurchaserNameToFirstLast < ActiveRecord::Migration
  def up
    rename_column :purchasers, :name, :first
    add_column :purchasers, :last, :string
  end

  def down
    rename_column :purchasers, :first, :name
    remove_column :purchasers, :last, :string
  end
end
