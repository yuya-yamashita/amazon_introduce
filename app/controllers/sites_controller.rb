class SitesController < ApplicationController
  def new
    @site = Site.new
  end

  def create
    @site = current_user.sites.create(site_params)
    if @site.save
      redirect_to site_path, notice: '作成に成功しました'
    else
      render :new
    end
  end

  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
    @sites = Site.all
  end

  private
  def site_params
    params.require(:site).permit(:name, :description)
  end
end
