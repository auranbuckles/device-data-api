class ApiController < ApplicationController
  def clients
    @clients = Client.all
    json_response(@clients)
  end

  def devices
    @devices = Device.all
    json_response(@devices)
  end

  def client
    @client = Client.create!(client_params)
    json_response(@client, :created)
  end

  private

  def client_params
    params.permit(:name, :category)
  end
end
