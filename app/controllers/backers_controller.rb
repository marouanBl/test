class BackersController < ApplicationController
  # GET /backers
  # GET /backers.json
  def index
    @backers = Backer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @backers }
    end
  end

  # GET /backers/1
  # GET /backers/1.json
  def show
    @backer = Backer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @backer }
    end
  end

  # GET /backers/new
  # GET /backers/new.json
  def new
    @backer = Backer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @backer }
    end
  end

  # GET /backers/1/edit
  def edit
    @backer = Backer.find(params[:id])
  end

  # POST /backers
  # POST /backers.json
  def create
    @backer = Backer.new(params[:backer])

    respond_to do |format|
      if @backer.save
        format.html { redirect_to project_url(@backer.project), notice: 'Fund was successfully sent.' }
        format.json { render json: @backer, status: :created, location: @backer }
      else
        format.html { render action: "new" }
        format.json { render json: @backer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /backers/1
  # PUT /backers/1.json
  def update
    @backer = Backer.find(params[:id])

    respond_to do |format|
      if @backer.update_attributes(params[:backer])
        format.html { redirect_to @backer, notice: 'Backer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @backer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backers/1
  # DELETE /backers/1.json
  def destroy
    @backer = Backer.find(params[:id])
    @backer.destroy

    respond_to do |format|
      format.html { redirect_to backers_url }
      format.json { head :no_content }
    end
  end
end
