module CdtBaas

	class CdtRecharge < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def rechargeReport()
			response = @request.get(@url + RECHARGES)
			person = CdtModel.new(response)
			person
		end

		def newRechargeSolicitation(id, body)
			response = @request.post(@url + RECHARGES + id.to_s, body, true)
			puts "Response from post"
			puts response
			rechargeResponse = CdtModel.new(response)
			puts rechargeResponse
			generateResponse(rechargeResponse)
		end

		def getRechargeSolicitation()
			response = @request.get(@url + RECHARGES)
			person = CdtModel.new(response)
			person
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

		def consultRecharge()
			response = @request.get(@url + RECHARGES + CONSULT)
			person = CdtModel.new(response)
			person
		end

		def adjustmentRecharge(body)
			response = @request.get(@url + RECHARGES + ADJUSTMENT + CdtHelper.conductorBodyToString(body))
			person = CdtModel.new(response)
			person
		end

	end
end
