module CdtBaas

	class CdtTransfer < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def bankTransfers(body)
			response = @request.get(@url + BANk_TRANSFER_ADJUST + CdtHelper.conductorBodyToString(body))
			person = CdtModel.new(response)
			person
		end

		def bankTransfersAdjustment(body)
			response = @request.post(@url + BANk_TRANSFER + CdtHelper.conductorBodyToString(body), {}, true)
			person = CdtModel.new(response)
			person
		end

	end
end
