class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
      @schoolclass = SchoolClass.new(params.require(:school_class))
      @schoolclass.save
      redirect_to school_class_path(@schoolclass)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end

end
