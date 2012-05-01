class Photo
    attr_accessor :name, :lat, :lng, :url_s, :url_sq, :username

    def initialize(name, lat, lng, url_s, url_sq, username)
        @name = name
        @lat = lat
        @lng = lng
        @url_s = url_s
        @url_sq = url_sq
        @username = username
    end

    def to_json(*a)
        {
            :name => @name,
            :lat => @lat,
            :lng => @lng,
            :url_s => @url_s,
            :url_sq => @url_sq,
            :username => @username
        }.to_json(*a)
    end

    def to_s
        "#{name} (#{lat}, #{lng}) #{url_s} #{url_sq} #{username}"
    end
end
