class BrainstormsController < ApplicationController
  # GET /brainstorms
  # GET /brainstorms.json
  def index
    @brainstorms = Brainstorm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brainstorms }
    end
  end

  # GET /brainstorms/1
  # GET /brainstorms/1.json
  def show
    @brainstorm = Brainstorm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brainstorm }
    end
  end

  # GET /brainstorms/new
  # GET /brainstorms/new.json
  def new
    @brainstorm = Brainstorm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brainstorm }
    end
  end

  # GET /brainstorms/1/edit
  def edit
    @brainstorm = Brainstorm.find(params[:id])
  end

  # POST /brainstorms
  # POST /brainstorms.json
  def create
    @brainstorm = Brainstorm.new(params[:brainstorm])

    respond_to do |format|
      if @brainstorm.save
        format.html { redirect_to @brainstorm, notice: 'Brainstorm was successfully created.' }
        format.json { render json: @brainstorm, status: :created, location: @brainstorm }
      else
        format.html { render action: "new" }
        format.json { render json: @brainstorm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brainstorms/1
  # PUT /brainstorms/1.json
  def update
    @brainstorm = Brainstorm.find(params[:id])

    respond_to do |format|
      if @brainstorm.update_attributes(params[:brainstorm])
        format.html { redirect_to @brainstorm, notice: 'Brainstorm was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @brainstorm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brainstorms/1
  # DELETE /brainstorms/1.json
  def destroy
    @brainstorm = Brainstorm.find(params[:id])
    @brainstorm.destroy

    respond_to do |format|
      format.html { redirect_to brainstorms_url }
      format.json { head :ok }
    end
  end
end
