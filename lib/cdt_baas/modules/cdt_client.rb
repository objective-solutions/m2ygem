module CdtBaas

	class CdtClient < CdtModule

		def initialize(token, env)
			startModule(token, env)
		end

		def registerPFAccount(body)
			response = @request.post(@url + REGISTER_PF_ACCOUNT + CdtHelper.conductorBodyToString(body), {}, true)
			person = CdtModel.new(response)
			person
		end

		def registerPJAccount(body)
			response = @request.post(@url + REGISTER_PJ_ACCOUNT + CdtHelper.conductorBodyToString(body), {}, true)
			person = CdtModel.new(response)
			person
		end

	end
end
