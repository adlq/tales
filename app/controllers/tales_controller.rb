class TalesController < ApplicationController
  before_filter :authenticate, except: [:index, :show]

  def index
    @tales = Tale.where(published:true).reverse
  end

  def admin
    @tales = Tale.all.reverse
    @published_tales = Tale.where(published:true).reverse
    @draft_tales = Tale.where(published:false).reverse
  end

  def admin

  end

  def new
    @tale = Tale.new
  end

  def create
    @tale = Tale.new params[:tale]

    if @tale.save
      redirect_to @tale
    else
      render 'new'
    end

  end

  def show
    @tale = Tale.find(params[:id])
  end

  def edit 
    @tale = Tale.find(params[:id])
  end

  def update
    @tale = Tale.find(params[:id])
    
    if @tale.update_attributes(params[:tale])
      redirect_to action: "admin"
    else
      render 'edit' 
    end
  end

  def destroy
    Tale.find(params[:id]).destroy
    redirect_to root_path
  end

end
