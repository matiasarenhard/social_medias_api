class Api::V1::SocialMediasController < ApplicationController
  def index
    render json: {test: 'test'}, status: 200
  end
end
