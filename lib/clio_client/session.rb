module ClioClient

  class Session

    include Http
    include Authorization

    attr_accessor :access_token

    def initialize(credentials = {})
      self.access_token = credentials[:access_token]
    end

    def activities
      @activities ||= ClioClient::Api::Activity.new(self)
    end

    def activity_descriptions
      @activities_descriptions ||= ClioClient::Api::ActivityDescription.new(self)
    end


  end

end