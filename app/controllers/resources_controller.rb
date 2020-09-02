class ResourcesController < ApplicationController
    def index
        resources = Resource.all
        render json: ResourceSerializer.new(resources)
    end

    def show
    end

    def create
        resource = Resource.new(resource_params)
        resource.country_id = resource_params["country_id"]
        if resource.save
            render json: ResourceSerializer.new(resource)
        else
            render json: {error: 'could not be created'}
        end
    end

    def destroy
        resource = Resource.find_by(id: params[:id])
        resource.destroy
        render json: {message: "Successfully deleted #{resource.name}!"}
    end

    private

    def resource_params
        params.require(:resource).permit(:name, :link, :country_id)
    end
end
