class BusinessplansController < ApplicationController
  # GET /businessplans
  # GET /businessplans.json
  def index
    @businessplans = Businessplan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @businessplans }
    end
  end

  # GET /businessplans/1
  # GET /businessplans/1.json
  def show
    @businessplan = Businessplan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @businessplan }
    end
  end

  # GET /businessplans/new
  # GET /businessplans/new.json
  def new
    @businessplan = Businessplan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @businessplan }
    end
  end

  # GET /businessplans/1/edit
  def edit
    @businessplan = Businessplan.find(params[:id])
  end

  # POST /businessplans
  # POST /businessplans.json
  def create
    @businessplan = Businessplan.new(params[:businessplan])

    respond_to do |format|
      if @businessplan.save
        format.html { redirect_to @businessplan, notice: 'Businessplan was successfully created.' }
        format.json { render json: @businessplan, status: :created, location: @businessplan }
      else
        format.html { render action: "new" }
        format.json { render json: @businessplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /businessplans/1
  # PUT /businessplans/1.json
  def update
    @businessplan = Businessplan.find(params[:id])

    respond_to do |format|
      if @businessplan.update_attributes(params[:businessplan])
        format.html { redirect_to @businessplan, notice: 'Businessplan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @businessplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businessplans/1
  # DELETE /businessplans/1.json
  def destroy
    @businessplan = Businessplan.find(params[:id])
    @businessplan.destroy

    respond_to do |format|
      format.html { redirect_to businessplans_url }
      format.json { head :no_content }
    end
  end
end
