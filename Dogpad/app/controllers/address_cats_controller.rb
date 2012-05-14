class AddressCatsController < ApplicationController
  # GET /address_cats
  # GET /address_cats.json
  def index
    @address_cats = AddressCat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @address_cats }
    end
  end

  # GET /address_cats/1
  # GET /address_cats/1.json
  def show
    @address_cat = AddressCat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @address_cat }
    end
  end

  # GET /address_cats/new
  # GET /address_cats/new.json
  def new
    @address_cat = AddressCat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @address_cat }
    end
  end

  # GET /address_cats/1/edit
  def edit
    @address_cat = AddressCat.find(params[:id])
  end

  # POST /address_cats
  # POST /address_cats.json
  def create
    @address_cat = AddressCat.new(params[:address_cat])

    respond_to do |format|
      if @address_cat.save
        format.html { redirect_to @address_cat, notice: 'Address cat was successfully created.' }
        format.json { render json: @address_cat, status: :created, location: @address_cat }
      else
        format.html { render action: "new" }
        format.json { render json: @address_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /address_cats/1
  # PUT /address_cats/1.json
  def update
    @address_cat = AddressCat.find(params[:id])

    respond_to do |format|
      if @address_cat.update_attributes(params[:address_cat])
        format.html { redirect_to @address_cat, notice: 'Address cat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @address_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_cats/1
  # DELETE /address_cats/1.json
  def destroy
    @address_cat = AddressCat.find(params[:id])
    @address_cat.destroy

    respond_to do |format|
      format.html { redirect_to address_cats_url }
      format.json { head :no_content }
    end
  end
end
