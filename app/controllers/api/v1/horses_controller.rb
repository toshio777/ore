module Api
  module V1
    class HorsesController < ApplicationController
      before_action :set_horse, only: [:show]

      def index
        horses = Horse.order(power: :desc)
        render json: { data: horses }
      end

      
    end
  end
end