module CdtBaas

	class CdtAuth 

      def initialize(user, password, env)
        @request = CdtRequest.new(user, password)
        @url = CdtHelper.homologation?(env) ? TOKEN_HML : TOKEN_PRD
      end

      def generateToken
      	response = @request.post(@url + TOKEN_PATH, {})
        p 'Token gerado'
        p response
        token = CdtModel.new(response)
        CdtHelper.saveToken(token.access_token)
        CdtHelper.generate_general_response(token)
	   end

	end
end


