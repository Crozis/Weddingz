# encoding: utf-8
class WeddingsController < ApplicationController
  before_filter :authenticate_user!, :except => [:activate, :activated, :show, :index]
  
  def activate
    weddings = Wedding.all
    weddings.each do |wedding|
      wedding.activated = false
      wedding.save
    end
    wedding = Wedding.find(params[:id])
    wedding.activated = true
    wedding.save
  end
  
  def activated
    wedding = Wedding.where(:activated => true).first
    if wedding.nil?
      respond_to do |format|
        format.json { render :text => "Aucun wedding n'est activé"}
      end
    else
      respond_to do |format|
        format.json { render :json => wedding.to_json }
      end
    end

  end
  
  # GET /weddings
  # GET /weddings.json
  def index
    @weddings = Wedding.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weddings }
    end
  end

  # GET /weddings/1
  # GET /weddings/1.json
  def show
    @wedding = Wedding.find(params[:id])
    if !current_user.nil? && current_user.is_client?
      @wedding = current_user.wedding
    end
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wedding.to_json }
    end
  end

  # GET /weddings/new
  # GET /weddings/new.json
  def new
    @wedding = Wedding.new
    @services = Service.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wedding.to_json }
    end
  end

  # GET /weddings/1/edit
  def edit
    @wedding = Wedding.find(params[:id])
  end

  # POST /weddings
  # POST /weddings.json
  def create
    @wedding = Wedding.new(params[:wedding])

    respond_to do |format|
      if @wedding.save
        format.html { redirect_to @wedding, notice: 'Wedding was successfully created.' }
        format.json { render json: @wedding, status: :created, location: @wedding }
      else
        format.html { render action: "new" }
        format.json { render json: @wedding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weddings/1
  # PUT /weddings/1.json
  def update
    @wedding = Wedding.find(params[:id])

    respond_to do |format|
      if @wedding.update_attributes(params[:wedding])
        format.html { redirect_to @wedding, notice: 'Wedding was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @wedding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weddings/1
  # DELETE /weddings/1.json
  def destroy
    @wedding = Wedding.find(params[:id])
    @wedding.destroy

    respond_to do |format|
      format.html { redirect_to weddings_url }
      format.json { head :ok }
    end
  end
end
