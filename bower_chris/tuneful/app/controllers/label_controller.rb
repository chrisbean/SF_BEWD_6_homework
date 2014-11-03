class LabelController < ApplicationController
  def index
    @labels = Label.all
  end

  def show
    @label = find_label
  end

  def new
    @label = Label.new
  end

  def create
    @label = Label.new(label_params)

    if @label.save
      redirect_to @label
    else
      render 'new'
    end
  end

  def edit
    @label = find_label
  end

  def update
  end

  def destroy
  end

private
  #attributes that you want people to update must be permitted
  def find_label
    Label.find(params[:id])
  end
  
  def label_params
    params.require(:label).permit(:name, :artist_id)
  end
end
