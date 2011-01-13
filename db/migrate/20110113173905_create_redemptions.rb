class CreateRedemptions < ActiveRecord::Migration
  def self.up
    create_table :redemptions do |t|
      t.references :coupon
      t.string :user_id
      t.string :transaction
      t.text :metadata

      t.timestamps
    end
  end

  def self.down
    drop_table :redemptions
  end
end
