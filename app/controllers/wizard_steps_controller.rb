class WizardStepsController < ApplicationController
  # GET /wizard_steps
  # GET /wizard_steps.json
  def index
    @wizard_steps = WizardStep.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wizard_steps }
    end
  end

  # GET /wizard_steps/1
  # GET /wizard_steps/1.json
  def show
    @wizard_step = WizardStep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wizard_step }
    end
  end

  # GET /wizard_steps/new
  # GET /wizard_steps/new.json
  def new
    @wizard_step = WizardStep.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wizard_step }
    end
  end

  # GET /wizard_steps/1/edit
  def edit
    @wizard_step = WizardStep.find(params[:id])
  end

  # POST /wizard_steps
  # POST /wizard_steps.json
  def create
    @wizard_step = WizardStep.new(params[:wizard_step])

    respond_to do |format|
      if @wizard_step.save
        format.html { redirect_to @wizard_step, notice: 'Wizard step was successfully created.' }
        format.json { render json: @wizard_step, status: :created, location: @wizard_step }
      else
        format.html { render action: "new" }
        format.json { render json: @wizard_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wizard_steps/1
  # PUT /wizard_steps/1.json
  def update
    @wizard_step = WizardStep.find(params[:id])

    respond_to do |format|
      if @wizard_step.update_attributes(params[:wizard_step])
        format.html { redirect_to @wizard_step, notice: 'Wizard step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wizard_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wizard_steps/1
  # DELETE /wizard_steps/1.json
  def destroy
    @wizard_step = WizardStep.find(params[:id])
    @wizard_step.destroy

    respond_to do |format|
      format.html { redirect_to wizard_steps_url }
      format.json { head :no_content }
    end
  end
end
