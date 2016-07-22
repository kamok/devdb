class Development
  module Location

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def within_box(top: , right: , bottom: , left: )
        factory = RGeo::Geographic.spherical_factory
        sw = factory.point(left, bottom)
        ne = factory.point(right, top)
        window = RGeo::Cartesian::BoundingBox.create_from_points(sw, ne).to_geometry
        where("point && ?", window)
      end

      def within(geometry)
        where("ST_Intersects(point, ?)", geometry)
      end
    end

    def location
      [latitude, longitude].map(&:to_f)
    end

    def rlocation
      location.reverse
    end

    def to_geojson
      RGeo::GeoJSON.encode point
    end

    def zip_code
      code = read_attribute(:zip_code).to_s
      code.length == 9 ? nine_digit_formatted_zip(code) : code
    end

    def neighborhood
      place.neighborhood if place
    end

    def municipality
      place.municipality if place
    end

    alias_method :city, :municipality

    def parcel
      OpenStruct.new(id: 123)
    end

    def street_view
      @street_view ||= StreetView.new(self)
    end

    def walkscore
      @walkscore ||= WalkScore.new content: read_attribute(:walkscore)
    end

    def get_walkscore
      self.walkscore = WalkScore.new(lat: latitude, lon: longitude).to_h
    end

    # TODO: Refactor into fully-tested (> 90%) service object.
    #
    #   Spec:
    #     - If there is a subway stop in the list, use it.
    #     - If there is no subway stop in the list, use the nearest bus stop.
    #     - If there are no nearby transit results, return nil.
    #  Additionally:
    #  - Remember to add a 'none' display in the view if there is no transit.
    #  - Keep using Net::HTTP - no gem needed for something this simple.
    def get_nearest_transit
      Transit.new(self).get_nearest_transit
    end     
  end
end
