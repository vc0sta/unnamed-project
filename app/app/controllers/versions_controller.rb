class VersionsController < ApplicationController
  def index
    version_info = { version: ENV["VERSION"] }

    render json: version_info
  end
end
