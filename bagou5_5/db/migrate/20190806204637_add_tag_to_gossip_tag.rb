class AddTagToGossipTag < ActiveRecord::Migration[5.2]
  def change
    add_reference :gossip_tags, :tag, foreign_key: true
  end
end
