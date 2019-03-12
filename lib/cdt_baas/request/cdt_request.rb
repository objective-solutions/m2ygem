require "httparty"

module CdtBaas

  class CdtRequest

    def initialize(token = nil, basic)
      if !token.nil?
        auth = token
      else
        auth = ENV["CDT_TOKEN#{basic[0,6]}"]
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
      validResponse(req)
    end


    def postWithHeader(url, body, headers = [])
      # if use_json
      #   @headers["Content-Type"] = 'application/json'
      # end
      if headers.length > 0
        headers.each do |header|
          @headers[header[:key]] = header[:value]
        end
      end


      req = HTTParty.post(url,
                          body: body.to_json,
                          headers: @headers
      )
      validResponse(req)
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
      validResponse(req)
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
      validResponse(req)
    end

    def delete(url)
      req = HTTParty.delete(url,
                            headers: @headers
      )
      validResponse(req)
    end

    def validJson?(json)
        JSON.parse(json)
        return true
      rescue JSON::ParserError => e
        return false
    end

    def validResponse(req)
      begin
        respose = req.parsed_response
        if respose.kind_of?(Hash)
          respose[:statusCode] = req.code
        end
        respose
      rescue
        {:message => "Erro interno Baas"}
      end
    end

  end

end
