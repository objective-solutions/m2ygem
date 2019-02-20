module CdtBaas

  class CdtModule

      def startModule(token, env)
        @auth = CdtAuth.new(token, env)
        refreshToken
        @request = CdtRequest.new
        @url = CdtHelper.homologation?(env) ? URL_HML : URL_PRD
      end

      def refreshToken
        if CdtHelper.shouldRefreshToken?
      		@auth.generateToken
          @request = CdtRequest.new
      	end
      end

      def generateResponse(input)
        CdtHelper.generate_general_response(input)
      end
  end

end
