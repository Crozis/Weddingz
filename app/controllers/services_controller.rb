class ServicesController < ApplicationController
  before_filter :wedding

  # GET /services
  # GET /services.json
  def wedding
    if(params[:wedding_id])
      @wedding = Wedding.find(params[:wedding_id])
    else
      @wedding = Wedding.first # Service.all <= What the fuck was that?
    end
  end
  
  def index
    if(params[:wedding_id])
      if params[:service_type_id]
        @activated_services = ServicesWedding.activated_services(params[:wedding_id], params[:service_type_id]) || []
        @disabled_services  = ServicesWedding.disabled_services(params[:wedding_id], params[:service_type_id]) || []
      else
        @services = Wedding.find(params[:wedding_id]).services
      end
    else
      @services = Service.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: { activated_services: @activated_services, disabled_services: @disabled_services }}
    end
  end


  def activate
    service_wedding = ServicesWedding.where(:wedding_id => params[:wedding_id], :service_id => params[:id]).first
    service_wedding.activated = true
    service_wedding.save
    respond_to do |format|
      format.html {render :text => "success", :status => 'success'}
      format.json {render :json => {status: "success"}, :status => 'success'}
    end
  end

  def disable
    service_wedding = ServicesWedding.where(:wedding_id => params[:wedding_id], :service_id => params[:id]).first
    service_wedding.activated = false
    service_wedding.save
    respond_to do |format|
      format.html {render :text => "success", :status => 'success'}
      format.json {render :json => {status: "success"}, :status => 'success'}
    end
  end

  ######################## DEFAULT ########################
  # GET /services/1
  # GET /services/1.json
  def show
    @service = Service.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @service }
    end
  end

  # GET /services/new
  # GET /services/new.json
  def new
    @service = Service.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @service }
    end
  end

  # GET /services/1/edit
  def edit
    @service = Service.find(params[:id])
  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(params[:service])
    @service.weddings << @wedding
    respond_to do |format|
      if @service.save
        format.html { redirect_to [@wedding, @service], notice: 'Service was successfully created.' }
        format.json { render json: @service, status: :created, location: @service }
      else
        format.html { render action: "new" }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /services/1
  # PUT /services/1.json
  def update
    @service = Service.find(params[:id])

    respond_to do |format|
      if @service.update_attributes(params[:service])
        format.html { redirect_to [@wedding, @service], notice: 'Service was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    respond_to do |format|
      format.html { redirect_to services_url }
      format.json { head :ok }
    end
  end
end
