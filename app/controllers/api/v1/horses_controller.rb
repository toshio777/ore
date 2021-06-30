module Api
  module V1
    class HorsesController < ApplicationController
      before_action :set_post, only: [:show, :update, :destroy]

      def index
        horses = Horse.order(created_at: :desc)
        render json: { status: 'SUCCESS', message: 'Loaded horses', data: horses }
      end

      def show
        render json: { status: 'SUCCESS', message: 'Loaded the post', data: @horse }
      end

      
    end
  end
end