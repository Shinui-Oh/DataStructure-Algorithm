class City
    attr_accessor :name, :routes

    def initialize(name)
        @name = name
        @routes = {}
    end

    def add_route(city, price)
        @routes[city] = price
    end
end