require "httparty"

module CdtBaas

  class CdtRequest

    def initialize(token = nil, basic)
      if !token.nil?
        auth = token
      else
        auth = ENV["CDT_TOKEN#{basic}"]
      end
      @headers = {
          "Content-Type" => 'application/x-www-form-urlencoded',
          "Authorization" => auth
      }
    end

    def self.setToken(token)
      if @headers.nil?
        @headers = {}
      end
      @headers["Authorization"] = token
    end

    def post(url, body, use_json = false)
      if use_json
        @headers["Content-Type"] = 'application/json'
      end
      req = HTTParty.post(url,
                          body: body.to_json,
                          headers: @headers
      )
      req.parsed_response[:statusCode] = req.code
      req.parsed_response
    end

    def get(url, headers = [])
      if headers.length > 0
        headers.each do |header|
          @headers[header[:key]] = header[:value]
        end
      end
      req = HTTParty.get(url,
                         headers: @headers
      )
      req.parsed_response
    end

    def put(url, body = {}, headers = [])
      if headers.length > 0
        headers.each do |header|
          @headers[header[:key]] = header[:value]
        end
      end

      req = HTTParty.put(url,
                         headers: @headers,
                         body: body.to_json
      )
      req.parsed_response[:statusCode] = req.code
      req.parsed_response
    end

    def delete(url)
      req = HTTParty.delete(url,
                            headers: @headers
      )
      req.parsed_response[:statusCode] = req.code
      req.parsed_response
    end


  end

end
