# sourced from http://t.y13i.com/post/83102660768/ruby-on-rails

module Crudable
  extend ActiveSupport::Concern

  included do
    before_action :set_model
    before_action :set_resource, only: [:show, :edit, :update, :destroy]

    # GET /resources
    # GET /resources.json
    def index
      instance_variable_set(resource(:tableize), @model.all)
    end

    # GET /resources/1
    # GET /resources/1.json
    def show
    end

    # GET /resources/new
    def new
      instance_variable_set(resource, @model.new)
    end

    # GET /resources/1/edit
    def edit
    end

    # POST /resources
    # POST /resources.json
    def create
      instance_variable_set(resource, @model.new(resource_params))

      respond_to do |format|
        if instance_variable_get(resource).save
          format.html { redirect_to action: :index, notice: 'Resource was successfully created.' }
          format.json { render :show, status: :created, location: get_location }
        else
          format.html { render :new }
          format.json { render json: instance_variable_get(resource).errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /resources/1
    # PATCH/PUT /resources/1.json
    def update
      respond_to do |format|
        if instance_variable_get(resource).update(resource_params)
          format.html { redirect_to action: :index, notice: 'Resource was successfully updated.' }
          format.json { render :show, status: :ok, location: get_location }
        else
          format.html { render :edit }
          format.json { render json: instance_variable_get(resource).errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /resources/1
    # DELETE /resources/1.json
    def destroy
      instance_variable_get(resource).destroy

      respond_to do |format|
        format.html { redirect_to action: :index, notice: 'Resource was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    def set_model
      @model = controller_name.classify.constantize
    end

    def model_name
      @model.to_s
    end

    def resource(inflector = :underscore)
      :"@#{model_name.send(inflector)}"
    end

    def get_location
      instance_variable_get(resource)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      instance_variable_set(resource, @model.find(params[:id]))
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_params
      params.require(model_name.underscore.intern).permit(*@model.column_names.map(&:intern))
    end
  end
end
