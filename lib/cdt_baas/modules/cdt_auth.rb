module CdtBaas

	class CdtAuth 

      def initialize(token, env)
        @request = CdtRequest.new("Basic #{token}", token)
        @basic = token
        @url = CdtHelper.homologation?(env) ? TOKEN_HML : TOKEN_PRD
        @url = CdtHelper.productionBr?(env) ? TOKEN_PRDBR : @url
      end

      def generateToken
      	response = @request.post(@url + TOKEN_PATH, {})
        token = CdtModel.new(response)
        CdtBaas::CdtRequest.setToken(token)
        CdtHelper.saveToken(@basic, token.access_token)
        CdtHelper.generate_general_response(token)
	   end

	end
end


