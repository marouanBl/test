class StartprojectsController < ApplicationController
  # GET /startprojects
  # GET /startprojects.json
  def index

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /startprojects/1
  # GET /startprojects/1.json
  def show
    @startproject = Startproject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @startproject }
    end
  end

  # GET /startprojects/new
  # GET /startprojects/new.json
  def new
    @startproject = Startproject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @startproject }
    end
  end

  # GET /startprojects/1/edit
  def edit
    @startproject = Startproject.find(params[:id])
  end

  # POST /startprojects
  # POST /startprojects.json
  def create
    @startproject = Startproject.new(params[:startproject])

    respond_to do |format|
      if @startproject.save
        format.html { redirect_to @startproject, notice: 'Startproject was successfully created.' }
        format.json { render json: @startproject, status: :created, location: @startproject }
      else
        format.html { render action: "new" }
        format.json { render json: @startproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /startprojects/1
  # PUT /startprojects/1.json
  def update
    @startproject = Startproject.find(params[:id])

    respond_to do |format|
      if @startproject.update_attributes(params[:startproject])
        format.html { redirect_to @startproject, notice: 'Startproject was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @startproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startprojects/1
  # DELETE /startprojects/1.json
  def destroy
    @startproject = Startproject.find(params[:id])
    @startproject.destroy

    respond_to do |format|
      format.html { redirect_to startprojects_url }
      format.json { head :no_content }
    end
  end
end
