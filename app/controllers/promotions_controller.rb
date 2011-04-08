class PromotionsController < ApplicationController
  def index
    @promotions = Promotion.all
  end

  def show
    @promotion = Promotion.find(params[:id])
  end

  def new
    if current_user
      @promotion = Promotion.new
    else
      redirect_to :root, :alert => "Sign in first."
    end
  end

  def create
    if current_user
      @promotion = Promotion.new(params[:promotion])
      @promotion.uid = current_user.uid
      @promotion.name = current_user.name
      if @promotion.save
        redirect_to @promotion, :notice => "Successfully created promotion."
      else
        render :action => 'new'
      end
    else
      redirect_to :root, :alert => "Sign in first."
    end
  end

  def edit
    @promotion = Promotion.find(params[:id])
    if is_signed_in_user?(@promotion.uid)
      @promotion
    else
      redirect_to :root, :alert => "Sign in first."
    end
  end

  def update
    @promotion = Promotion.find(params[:id])
    if is_signed_in_user?(@promotion.uid)
      if @promotion.update_attributes(params[:promotion])
        redirect_to @promotion, :notice  => "Successfully updated promotion."
      else
        render :action => 'edit'
      end
    else
      redirect_to :root, :alert => "Sign in first."
    end
  end

  def destroy
    @promotion = Promotion.find(params[:id])
    if is_signed_in_user?(@promotion.uid)
      @promotion.destroy
      redirect_to promotions_url, :notice => "Successfully destroyed promotion."
    else
      redirect_to :root, :alert => "Sign in first."
    end
  end
end
