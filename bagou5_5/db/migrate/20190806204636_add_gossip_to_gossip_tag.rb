class AddGossipToGossipTag < ActiveRecord::Migration[5.2]
  def change
    add_reference :gossip_tags, :gossip, foreign_key: true
  end
end
