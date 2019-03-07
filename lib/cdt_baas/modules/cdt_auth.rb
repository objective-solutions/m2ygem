module CdtBaas

	class CdtAuth 

      def initialize(token, env)
        @request = CdtRequest.new(token)
        @basic = token
        @url = CdtHelper.homologation?(env) ? TOKEN_HML : TOKEN_PRD
      end

      def generateToken
      	response = @request.post(@url + TOKEN_PATH, {})
        token = CdtModel.new(response)
        puts token.to_s
        puts token.to_s
        puts token.to_s
        puts token.to_s
        puts token.to_s
        puts token.to_s
        puts token.to_s
        CdtBaas::CdtRequest.setToken(token)
        CdtHelper.saveToken(@basic, token.access_token)
        CdtHelper.generate_general_response(token)
	   end

	end
end


