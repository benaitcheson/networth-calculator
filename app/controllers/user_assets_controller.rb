class UserAssetsController < ApplicationController
  before_action :set_user_asset, except: %i[index new create]

  def index
    @user_assets = UserAsset.all
  end

  def new
    @user_asset = UserAsset.new
  end

  def show
  end

  def edit
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
    if @user_asset.update(user_asset_params)
      redirect_to @user_asset
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user_asset.destroy

    redirect_to root_path
  end

  private

  def user_asset_params
    params.require(:user_asset).permit(:title, :amount, :description)
  end

  def set_user_asset
    @user_asset = UserAsset.find(params[:id])
  # rescue ActiveRecord::RecordNotFound
    # redirect_to root_path, notice: 'User Asset not found'
  end
end
