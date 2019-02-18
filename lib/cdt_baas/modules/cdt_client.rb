module CdtBaas

	class CdtClient < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def registerPFAccount(body)
		 	refreshToken
			response = @request.post(@url + REGISTER_PF_ACCOUNT + CdtHelper.conductorBodyToString(body), {}, true)
			person = CdtModel.new(response)
			person
		end

		def registerPJAccount(body)
	 	 	refreshToken
			response = @request.post(@url + REGISTER_PJ_ACCOUNT + CdtHelper.conductorBodyToString(body), {}, true)
			person = CdtModel.new(response)
			person
		end

	end
end
