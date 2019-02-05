module CdtBaas

	class CdtService < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def p2pTransfer(body)
			response = @request.post(@url + P2P_PATH, body, true)
			p2pResponse = CdtModel.new(response)
			generateResponse(p2pResponse)
		end

	end
end
