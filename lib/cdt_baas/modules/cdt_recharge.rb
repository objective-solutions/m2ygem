module CdtBaas

	class CdtRecharge < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def rechargeReport(id)
         	refreshToken
			response = @request.get(@url + RECHARGES + id.to_s)
			if !response.length > 0
				rechargeResponse = CdtModel.new(response)
			else
				rechargeResponse = response
			end
			generateResponse(rechargeResponse)
		end

		def newRechargeSolicitation(id, body)
         	refreshToken
			response = @request.post(@url + RECHARGES + id.to_s, body, true)
			rechargeResponse = CdtModel.new(response)
			generateResponse(rechargeResponse)
		end

		def getRechargeSolicitation()
         	refreshToken
			response = @request.get(@url + RECHARGES)
			rechargeResponse = CdtModel.new(response)
			generateResponse(rechargeResponse)
		end

		def newRechargeOrder(body)
         	refreshToken
			response = @request.post(@url + RECHARGES, body, true)
			rechargeResponse = CdtModel.new(response)
			generateResponse(rechargeResponse)
		end

		def confirmRecharge(id, body)
         	refreshToken
			response = @request.post(@url + RECHARGES + id.to_s + '/' + CONFIRM, body, true)
			rechargeResponse = CdtModel.new(response)
			generateResponse(rechargeResponse)
		end

		def confirmDealers()
         	refreshToken
			response = @request.get(@url + RECHARGES + DEALERS)
			rechargeResponse = CdtModel.new(response)
			generateResponse(rechargeResponse)
		end

		def consultRecharge(id)
         	refreshToken
			response = @request.get(@url + RECHARGES + CONSULT + id.to_s)
			rechargeResponse = CdtModel.new(response)
			generateResponse(rechargeResponse)
		end

		def getRecharges(id)
         	refreshToken
			response = @request.get(@url + RECHARGES + ACCOUNT + id.to_s)
			transferResponse = response
			generateResponse(transferResponse)
		end

		def adjustmentRecharge(id)
			refreshToken
			response = @request.get(@url + RECHARGES + ADJUSTMENT + id)
			rechargeResponse = CdtModel.new(response)
			generateResponse(rechargeResponse)
		end

	end
end
