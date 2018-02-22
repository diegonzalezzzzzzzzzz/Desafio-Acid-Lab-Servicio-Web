class ChangeBiometricImageToImage < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :biometric_image, :image
  end
end
