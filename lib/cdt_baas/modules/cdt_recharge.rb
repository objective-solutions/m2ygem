module CdtBaas

	class CdtRecharge < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def rechargeReport(id)
			response = @request.get(@url + RECHARGES + id.to_s)
			rechargeResponse = CdtModel.new(response)
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

		def adjustmentRecharge(body)
			response = @request.get(@url + RECHARGES + ADJUSTMENT + CdtHelper.conductorBodyToString(body))
			person = CdtModel.new(response)
			person
		end

	end
end
