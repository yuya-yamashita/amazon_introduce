class TagsController < ApplicationController
before_action :set_tag, only: [:edit, :update, :destroy]
before_action :set_session_new, only: [:new]
after_action :set_session_update, only: [:edit, :update, :destroy]

  def new
    binding.pry
    @tag = Tag.new
    @tags = Tag.where(site_id: session[:site_id])
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to new_tag_path(@tag.site_id), notice: '作成に成功しました'
    else
      redirect_to new_tag_path(@tag.site_id)
    end
  end

  def edit
  end

  def update
    if @tag.update(tag_params)
      redirect_to new_tag_path(@tag.site_id), notice: 'タグの編集に成功しました'
    else
      redirect_to new_tag_path(@tag.site_id)
    end
  end

  def destroy
    if @tag.destroy
      redirect_to new_tag_path(@tag.site_id), notice: 'タグを削除しました'
    else
      redirect_to new_tag_path(@tag.site_id), alert: 'タグの削除に失敗しました'
    end
  end

  private
  def tag_params
    params.require(:tag).permit(:site_id, :name)
  end

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def set_session_new
    session[:site_id] = params[:site_id]
  end

  def set_session_update
    session[:site_id] = @tag.site_id
  end

end
