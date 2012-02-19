class ServiceTypesController < InheritedResources::Base
  def index
    @service_types = ServiceType.all
    respond_to do |format|
      format.json { render :json => @service_types }
    end
  end
end
