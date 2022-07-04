# frozen_string_literal: true

module Api
  module V1
    class SocialMediasController < ApplicationController
      def index
        social_medias_responses = { twitter: Twitter.new.take_twitters,
                                    facebook: Facebook.new.take_statuses,
                                    instagram: Instagram.new.take_photos }
        render json: social_medias_responses, status: 200
      end
    end
  end
end
