class TalesController < ApplicationController
  def index
    @tales = Tale.all
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
      redirect_to @tale
    else
      render 'edit' 
    end
  end

  def destroy
    Tale.find(params[:id]).destroy
    redirect_to root_path
  end

end
