module UserAssetsHelper

  def total_user_assets
    @user_assets.sum(&:amount)
  end
end
