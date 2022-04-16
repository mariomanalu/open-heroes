class AddAttachmentHeroImageToHeros < ActiveRecord::Migration[4.2]
  def self.up
    change_table :heros do |t|
      t.attachment :hero_image
    end
  end

  def self.down
    remove_attachment :heros, :hero_image
  end
end
