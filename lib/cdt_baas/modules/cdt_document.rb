module CdtBaas

	class CdtDocument < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def registerDocument(body)
	 	 	refreshToken
			response = @request.post(@url + GENERATE_DOCUMENT + CdtHelper.conductorBodyToString(body), {}, true)
			person = CdtModel.new(response)
			person
		end

	end
end
