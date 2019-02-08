module CdtBaas

	class CdtRecharge < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def rechargeReport(id)
			response = @request.get(@url + RECHARGES + id.to_s)
			if !response.length > 0
				rechargeResponse = CdtModel.new(response)
			else
				rechargeResponse = response
			end
			puts rechargeResponse
			generateResponse(rechargeResponse)
		end

		def newRechargeSolicitation(id, body)
			response = @request.post(@url + RECHARGES + id.to_s, body, true)
			rechargeResponse = CdtModel.new(response)
			generateResponse(rechargeResponse)
		end

		def getRechargeSolicitation()
			response = @request.get(@url + RECHARGES)
			rechargeResponse = CdtModel.new(response)
			generateResponse(rechargeResponse)
		end

		def newRechargeOrder(body)
			response = @request.post(@url + RECHARGES, body, true)
			rechargeResponse = CdtModel.new(response)
			generateResponse(rechargeResponse)
		end

		def confirmRecharge(id, body)
			response = @request.post(@url + RECHARGES + id.to_s + '/' + CONFIRM, body, true)
			rechargeResponse = CdtModel.new(response)
			generateResponse(rechargeResponse)
		end

		def confirmDealers()
			response = @request.get(@url + RECHARGES + DEALERS)
			rechargeResponse = CdtModel.new(response)
			generateResponse(rechargeResponse)
		end

		def consultRecharge(id)
			response = @request.get(@url + RECHARGES + CONSULT + id.to_s)
			rechargeResponse = CdtModel.new(response)
			generateResponse(rechargeResponse)
		end

		def adjustmentRecharge(id)
			response = @request.get(@url + RECHARGES + ADJUSTMENT + id)
			rechargeResponse = CdtModel.new(response)
			generateResponse(rechargeResponse)
		end

	end
end
