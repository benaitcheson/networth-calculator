class UserAssetsController < ApplicationController
  def index
  end

  def new
  end

  def show
    @user_asset = UserAsset.find(params[:id])
  end

  def edit
    @user_asset = UserAsset.find(params[:id])
  end

  def create
    @user_asset = UserAsset.new(user_asset_params)

    if @user_asset.save
      redirect_to @user_asset
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @user_asset = UserAsset.find(params[:id])

    if @user_asset.update(user_asset_params)
      redirect_to @user_asset
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def asset_params
    params.require(:user_asset).permit(:name, :amount)
  end
end
