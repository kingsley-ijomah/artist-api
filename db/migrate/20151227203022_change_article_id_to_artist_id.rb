class ChangeArticleIdToArtistId < ActiveRecord::Migration
  def change
    remove_column :albums, :article_id, :string
    add_column :albums, :artist_id, :integer
  end
end
