class Api::V1::ApplicationController < ApplicationController
  include Crudable

  skip_before_action :verify_authenticity_token
  before_action :authenticate

  # POST /resources/dryrun
  def dry_create
    instance_variable_set(resource, @model.new(resource_params))

    if instance_variable_get(resource).valid?
      render :show, status: :ok #, location: get_location
    else
      render json: instance_variable_get(resource).errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /resources/1/dryrun
  def dry_update
    updated = instance_variable_get(resource)
    updated.assign_attributes(resource_params)
    if updated.valid?
      render :show, status: :ok, location: get_location
    else
      render json: instance_variable_get(resource).errors, status: :unprocessable_entity
    end
  end

  private

  def authenticate
    begin
      User.find(session[:user_id])
    rescue => e
      render json: {error: 'unauthorized'}, status: :unauthorized
    end
  end

  def get_location
    '/%s/%d' % [
      controller_path,
      instance_variable_get("@#{model_name.underscore}").id
    ]
  end
end
