module CdtBaas


  class CdtModule

      def startModule(user, password, env)
        @auth = CdtAuth.new(user, password, env)
        refreshToken
        @request = CdtRequest.new
        @url = CdtHelper.homologation?(env) ? URL_HML : URL_PRD
      end


      def refreshToken
      	puts 'atualizando token'
        #if CdtHelper.shouldRefreshToken?
          #puts 'token atualizado'
      		@auth.generateToken
          #@request = CdtRequest.new
      	#end
      end

      def generateResponse(input)
        CdtHelper.generate_general_response(input)
      end
end

end
