require "httparty"

module CdtBaas

  class CdtRequest

    def initialize(user = nil, password = nil)
      if !user.nil? && !password.nil?
        auth = "Basic " + Base64::strict_encode64(user + ":" + password)
      else
        auth = ENV["CDT_TOKEN"]
      end
      @headers = {
          "Content-Type" => 'application/x-www-form-urlencoded',
          "Authorization" => auth
      }
    end

    def post(url, body, use_json = false)
      if use_json
        @headers["Content-Type"] = 'application/json'
      end

      puts @headers

      req = HTTParty.post(url,
                          body: body.to_json,
                          headers: @headers
      )
      puts url
      puts req.parsed_response
      req.parsed_response
    end

    def get(url)
      req = HTTParty.get(url,
                         headers: @headers
      )
      puts url
      puts req.parsed_response
      req.parsed_response
    end

    def put(url, body, use_json = false)
      if use_json
        @headers["Content-Type"] = 'application/json'
      end

      req = HTTParty.put(url,
                         headers: @headers,
                         body: body.to_json
      )
      puts url
      puts req.parsed_response
      req.parsed_response
    end

    def delete(url)
      req = HTTParty.delete(url,
                            headers: @headers
      )
      req.parsed_response
    end


  end

end
