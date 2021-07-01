module Api
  module V1
    class HorsesController < ApplicationController
      before_action :set_horse, only: [:show]

      def index
        horses = Horse.order(power: :desc)
        render json: { data: horses }
      end

      def show
        render json: { data: @horse }
      end


      private

      def set_horse
        @horse = Horse.find(params[:id])
      end


      
    end
  end
end