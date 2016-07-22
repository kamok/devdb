class Transit

	attr_accessor :development

	def initialize(development)
		@development = development
		@MBTA_data = JSON.parse(response)
	end

	def get_nearest_transit
    key = 'parent_station_name'

    subway_station = @MBTA_data['stop'].detect { |e| e[key].present? }
    subway_station ? name = subway_station[key] : name = "Bus stop: #{@MBTA_data['stop'].first['stop_name']}"

    development.nearest_transit = name

    rescue StandardError => e
      development.nearest_transit = "" # Return current value or empty string
  end

  private

 # 	def get_nearest_subway_station

	# end

	# def get_nearest_bus_stop
		
	# end 

  def response
  	Net::HTTP.get_response(URI(url)).body
  end

  def url
  	"http://realtime.mbta.com/developer/api/v2/stopsbylocation?".tap do |url|
  		url << "api_key=#{ENV['MBTA_API_KEY']}"
    	url << "&lat=#{development.latitude.to_f}&lon=#{development.longitude.to_f}&format=json"
    end
  end
end