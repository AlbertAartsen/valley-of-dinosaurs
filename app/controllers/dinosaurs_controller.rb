class DinosaursController < ApplicationController
  # ...

  def show
    @dinosaur = Dinosaur.find(params[:id])
  end

  def index
    @dinosaur = Dinosaur.all
  end

  def new
    @dinosaur = Dinosaur.new
  end

  def create
     dinosaur_params

    @dinosaur = Dinosaur.new(dinosaur_params)

    if @dinosaur.save
       redirect_to @dinosaur
    else
       render 'new'
    end
  end

  def edit
    @dinosaur = Dinosaur.find(params[:id])
  end

  def update
    @dinosaur = Dinosaur.find(params[:id])

    dinosaur_params = params.require(:dinosaur).permit(:name, :age, :image_url)

    if @dinosaur.update_attributes(dinosaur_params)
      redirect_to @dinosaur
    else
      render 'edit'
    end
  end

  def destroy
    @dinosaur = Dinosaur.find(params[:id])

    @dinosaur.destroy

    redirect_to dinosaurs_path
  end


  private

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :age, :image_url)
  end


end
