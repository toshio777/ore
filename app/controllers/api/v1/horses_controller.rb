module Api
  module V1
    class HorsesController < ApplicationController
      before_action :set_post, only: [:show, :update, :destroy]

      def index
        horses = Horse.order(power: :desc)
        render json: { status: 'SUCCESS', message: 'Loaded horses', data: horses }
      end

      
    end
  end
end