class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy, :check]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @list.update(list_params)

    # no need for app/views/lists/create.html.erb
    redirect_to list_path(@list)
  end

  def destroy
    @list.destroy

    # no need for app/views/lists/destroy.html.erb
    redirect_to index_path()
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
