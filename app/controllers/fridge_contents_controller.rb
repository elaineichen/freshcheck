class FridgeContentsController < ApplicationController
  def index
    @fridge_contents = FridgeContent.all
  end

  def show
    @fridge_content = FridgeContent.find(params[:id])
  end

  def new
    @fridge_content = FridgeContent.new
  end

  def create
    @fridge_content = FridgeContent.new
    @fridge_content.items_id = params[:items_id]
    @fridge_content.quantity = params[:quantity]
    @fridge_content.expiration_date = Chronic.parse(params[:expiration_date])
    @fridge_content.date_purchased = Chronic.parse(params[:date_purchased])

    if @fridge_content.save
      redirect_to "/fridge_contents", :notice => "Fridge content created successfully."
    else
      render 'new'
    end
  end

  def edit
    @fridge_content = FridgeContent.find(params[:id])
  end

  def update
    @fridge_content = FridgeContent.find(params[:id])

    @fridge_content.items_id = FridgeContent.find(params[:items_id])
    @fridge_content.quantity = params[:quantity]
    @fridge_content.expiration_date = params[:expiration_date]
    @fridge_content.date_purchased = params[:date_purchased]

    if @fridge_content.save
      redirect_to "/fridge_contents", :notice => "Fridge content updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @fridge_content = FridgeContent.find(params[:id])

    @fridge_content.destroy

    redirect_to "/fridge_contents", :notice => "Fridge content deleted."
  end
end
