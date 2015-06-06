class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def show
    @park = Park.find(params[:id])
  end

  def new
    @park = Park.new
  end

  def create
    @park = Park.new
    @park.rating = params[:rating]
    @park.comments = params[:comments]
    @park.name = params[:name]
    @park.address = params[:address]
    @park.neighborhood = params[:neighborhood]
    @park.user_id = current_user.id

    if @park.save
      redirect_to "/parks", :notice => "Park created successfully."
    else
      render 'new'
    end
  end

  def edit
    @park = Park.find(params[:id])
  end

  def update
    @park = Park.find(params[:id])

    @park.rating = params[:rating]
    @park.comments = params[:comments]
    @park.name = params[:name]
    @park.address = params[:address]
    @park.neighborhood = params[:neighborhood]
    @park.user_id = current_user.id

    if @park.save
      redirect_to "/parks", :notice => "Park updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @park = Park.find(params[:id])

    @park.destroy

    redirect_to "/parks", :notice => "Park deleted."
  end
end
