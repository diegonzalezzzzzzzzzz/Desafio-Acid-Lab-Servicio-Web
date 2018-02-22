class ChangeTextToBiometricImage < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :text, :biometric_image
  end
end
