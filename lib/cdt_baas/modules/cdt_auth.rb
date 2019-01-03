module CdtBaas

	class CdtAuth 

      def initialize(user, password, env)
        @request = CdtRequest.new(user, password)
        @url = CdtHelper.homologation?(env) ? TOKEN_HML : TOKEN_PRD
      end

      def generateToken
      	response = @request.post(@url + TOKEN_PATH, {})
        token = CdtModel.new(response)
        CdtHelper.saveToken(token.access_token)
	   end

	end
end


