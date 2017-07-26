class AddImgUrlToPerformers < ActiveRecord::Migration[5.1]
  def change
    add_column :performers, :img_url, :string
  end
end
