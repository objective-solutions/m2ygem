module CdtBaas

	class CdtService < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def p2pTransfer(body)
			response = @request.post(@url + P2P_PATH + CdtHelper.conductorBodyToString(body), {}, true)
			person = CdtModel.new(response)
			person
		end

	end
end
