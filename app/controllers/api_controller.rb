class ApiController < ApplicationController
  def clients
    @clients = Client.all
    json_response(@clients)
  end

  def client
    @client = Client.create!(client_params)
    json_response(@client, :created)
  end

  def devices
    @devices = Device.all
    json_response(@devices)
  end

  def device
    client = Client.find_by!(client_id: device_params["client_id"])
    user_agent = URI.decode(device_params["data"])
    device_details = DeviceDetector.new(user_agent)
    if device_details.known?
      device_name = device_details.device_name || device_details.os_name
      device = Device.find_or_create_by!(name: device_name, device_type: device_details.device_type)
      session = UserSession.create!(session_id: device_params["session_id"], client: client, device: device)
      os = OperatingSystem.create!(name: device_details.os_name)
      device_os = DevicesOperatingSystem.create!(device_id: device.id, operating_system_id: os.id)
      os_version = OsVersion.create!(version: device_details.os_full_version, operating_system: os)
      @data = {
        session_data_sent: device_params,
        device: device.as_json(:except => [:id, :created_at, :updated_at]),
        os: { name: os.name, version: os_version.version }
      }
      json_response(@data)
    else
      json_response({ message: "Client/device unknown" }, :unprocessable_entity)
    end
  end

  private

  def client_params
    params.permit(:name, :category)
  end

  def device_params
    params.permit(:session_id, :client_id, :data)
  end
end
