class SitesController < ApplicationController
  before_action :set_site, only: [:edit, :update, :destroy]

  def new
    @site = Site.new
  end

  def create
    @site = current_user.sites.create(site_params)
    if @site.save
      redirect_to sites_path, notice: '作成に成功しました'
    else
      render :new
    end
  end

  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
  end

  def edit
  end

  def update
    if @site.update(site_params)
      redirect_to sites_path, notice: 'タグの編集に成功しました'
    else
      render :new
    end
  end

  def destroy
    if @site.destroy
      redirect_to sites_path, notice: 'タグを削除しました'
    else
      redirect_to sites_path, alert: 'タグの削除に失敗しました'
    end
  end

  private
  def site_params
    params.require(:site).permit(:name, :description)
  end

  def set_site
    @site = Site.find(params[:id])
  end
end
