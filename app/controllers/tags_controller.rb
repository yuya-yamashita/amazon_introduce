class TagsController < ApplicationController
  def new
    @tag = Tag.new
    @tags = Tag.all
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to site_path(@tag.site_id), method: :get, notice: '作成に成功しました'
    else
      render :new
    end
  end

  private
  def tag_params
    params.require(:tag).permit(:site_id, :name)
  end
end
