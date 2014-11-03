class LabelsController < ApplicationController
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
    @label = find_label
    if @label.update(label_params)
      redirect_to labels_path
    else
      render 'edit'
    end
  end

  def destroy
    @label = find_label
    @label.destroy
    redirect_to labels_path
  end

private
  #permit attributes people can add/edit
  def find_label
    Label.find(params[:id])
  end
  
  def label_params
    params.require(:label).permit(:name, :artist_id)
  end
end
