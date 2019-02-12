module CdtBaas

	class CdtBillet < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def generateTicket(body)
			response = @request.get(@url + BILLET + CdtHelper.conductorBodyToString(body))
			person = CdtModel.new(response)
			person
		end

	end
end
