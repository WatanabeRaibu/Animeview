class AddImageToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :image, :string
  end
end
