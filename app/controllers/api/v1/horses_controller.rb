module Api
  module V1
    class HorsesController < ApplicationController
      

      def index
        horses = Horse.order(power: :desc)
        render json: { data: horses }
      end

      def show
        render json: { data: horses }
      end


      
    end
  end
end