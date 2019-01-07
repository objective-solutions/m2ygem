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

		def newRechargeSolicitation(body)
			response = @request.post(@url + RECHARGES + CdtHelper.conductorBodyToString(body), {}, true)
			person = CdtModel.new(response)
			person
		end

		def getRechargeSolicitation()
			response = @request.get(@url + RECHARGES)
			person = CdtModel.new(response)
			person
		end

		def newRechargeOrder(body)
			response = @request.post(@url + RECHARGES + CdtHelper.conductorBodyToString(body), {}, true)
			person = CdtModel.new(response)
			person
		end

		def confirmRecharge(id, body)
			response = @request.post(@url + RECHARGES + id.to_s + '/' + CONFIRM + CdtHelper.conductorBodyToString(body), {}, true)
			person = CdtModel.new(response)
			person
		end

		def confirmDealers()
			response = @request.get(@url + RECHARGES + DEALERS)
			person = CdtModel.new(response)
			person
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
