module CdtBaas

	class CdtTransfer < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def bankTransfers(body)
			refreshToken
			response = @request.post(@url + BANk_TRANSFER, body, true)
			transferResponse = CdtModel.new(response)
			generateResponse(transferResponse)
		end

		def getBankTransfers(id)
         	refreshToken
			response = @request.get(@url + BANk_TRANSFER + ACCOUNT + id.to_s)
			transferResponse = response
			generateResponse(transferResponse)
		end

		def bankTransfersAdjustment(id)
         	refreshToken
			response = @request.get(@url + BANk_TRANSFER_ADJUST + id.to_s)
			transferResponse = CdtModel.new(response)
			generateResponse(transferResponse)
		end

	end
end
