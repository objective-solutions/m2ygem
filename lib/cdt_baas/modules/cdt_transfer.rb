module CdtBaas

	class CdtTransfer < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def bankTransfers(body)
			response = @request.post(@url + BANk_TRANSFER, body, true)
			transferResponse = CdtModel.new(response)
			generateResponse(transferResponse)
		end

		def bankTransfersAdjustment(id)
			response = @request.get(@url + BANk_TRANSFER_ADJUST + id.to_s)
			transferResponse = CdtModel.new(response)
			generateResponse(transferResponse)
		end

	end
end
