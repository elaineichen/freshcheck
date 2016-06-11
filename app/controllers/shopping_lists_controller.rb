class ShoppingListsController < ApplicationController
  def index
    @shopping_lists = ShoppingList.all
  end

  def show
    @shopping_list = ShoppingList.find(params[:id])
  end

  def new
    @shopping_list = ShoppingList.new
  end

  def create
    @shopping_list = ShoppingList.new
    @shopping_list.items_id = params[:items_id]
    @shopping_list.quantity = params[:quantity]

    if @shopping_list.save
      redirect_to "/shopping_lists", :notice => "Shopping list created successfully."
    else
      render 'new'
    end
  end

  def addtoshop
    @shopping_list = ShoppingList.new

  end

  def edit
    @shopping_list = ShoppingList.find(params[:id])
  end

  def update
    @shopping_list = ShoppingList.find(params[:id])

    @shopping_list.items_id = params[:items_id]
    @shopping_list.quantity = params[:quantity]

    if @shopping_list.save
      redirect_to "/shopping_lists", :notice => "Shopping list updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @shopping_list = ShoppingList.find(params[:id])

    @shopping_list.destroy

    redirect_to "/shopping_lists", :notice => "Shopping list deleted."
  end
end
