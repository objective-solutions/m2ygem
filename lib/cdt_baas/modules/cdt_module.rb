module CdtBaas


  class CdtModule

      def startModule(user, password, env)
        @auth = CdtAuth.new(user, password, env)
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
        cdtErrorHandler = CdtErrorHandler.new
        response = {}
        if cdtErrorHandler.mapErrorType(input)
          response = {
            success: false,
            error: cdtErrorHandler
          }
        else
          response = {
            success: true,
            content: input
          }
        end
        response
      end
end

end