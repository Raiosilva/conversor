class ConversesController < ApplicationController
  def index
  end

  def convert
    value = ConverseService.new(params[:source_currency], params[:target_currency], params[:amount]).perform()
    render json: {"value": value}
  end

  def invert
    value = ConverseService.new(params[:source_currency], params[:target_currency], params[:amount]).perform()
    render json: {"value": value}
  end


end
