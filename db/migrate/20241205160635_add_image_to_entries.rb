# This migration is no longer needed since we're using Active Storage
# Active Storage handles file attachments through its own tables
class AddImageToEntries < ActiveRecord::Migration[7.1]
  def change
    # No longer needed - using Active Storage instead
  end
end