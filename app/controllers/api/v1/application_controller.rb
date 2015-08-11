class Api::V1::ApplicationController < ApplicationController
  include Crudable

  skip_before_action :verify_authenticity_token

  private

  def get_location
    '/%s/%d' % [
      controller_path,
      instance_variable_get("@#{model_name.underscore}").id
    ]
  end
end
