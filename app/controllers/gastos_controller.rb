class GastosController < ApplicationController
  # GET /gastos
  # GET /gastos.json
  def index
    @gastos = Gasto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gastos }
    end
  end

  # GET /gastos/1
  # GET /gastos/1.json
  def show
    @gasto = Gasto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gasto }
    end
  end

  # GET /gastos/new
  # GET /gastos/new.json
  def new
    @gasto = Gasto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gasto }
    end
  end

  # GET /gastos/1/edit
  def edit
    @gasto = Gasto.find(params[:id])
  end

  # POST /gastos
  # POST /gastos.json
  def create
    @gasto = Gasto.new(params[:gasto])

    respond_to do |format|
      if @gasto.save
        format.html { redirect_to @gasto, notice: 'Gasto was successfully created.' }
        format.json { render json: @gasto, status: :created, location: @gasto }
      else
        format.html { render action: "new" }
        format.json { render json: @gasto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gastos/1
  # PUT /gastos/1.json
  def update
    @gasto = Gasto.find(params[:id])

    respond_to do |format|
      if @gasto.update_attributes(params[:gasto])
        format.html { redirect_to @gasto, notice: 'Gasto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gasto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gastos/1
  # DELETE /gastos/1.json
  def destroy
    @gasto = Gasto.find(params[:id])
    @gasto.destroy

    respond_to do |format|
      format.html { redirect_to gastos_url }
      format.json { head :no_content }
    end
  end
end
