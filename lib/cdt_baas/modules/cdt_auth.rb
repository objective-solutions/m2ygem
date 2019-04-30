module CdtBaas

	class CdtAuth 

      def initialize(token, env)
        @request = CdtRequest.new("Basic #{token}", token)
        @basic = token
        @url = CdtHelper.homologation?(env) ? TOKEN_HML : TOKEN_PRD
        @url = CdtHelper.productionBr?(env) ? TOKEN_ONLYPAY : @url
      end

      def generateToken
        if @url.include?(TOKEN_ONLYPAY)
          response = @request.post(@url + TOKEN_PATH, {:username => ONLYPAY_USER, :password => ONLYPAY_PASSWORD})
          puts response.to_s
          puts response.to_s
        else
      	 response = @request.post(@url + TOKEN_PATH, {})
        end
        token = CdtModel.new(response)
        CdtBaas::CdtRequest.setToken(token)
        CdtHelper.saveToken(@basic, token.access_token)
        CdtHelper.generate_general_response(token)
	   end

	end
end


