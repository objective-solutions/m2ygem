module CdtBaas

	class CdtTransportCard < CdtModule

		def initialize(token, env)
			startModule(token, env)
		end

		def transportCards(body)
			response = @request.get(@url + TRANSPORT_CARDS + CdtHelper.conductorBodyToString(body))
			person = CdtModel.new(response)
			person
		end

		def getTransportCards(body)
			response = @request.get(@url + TRANSPORT_CARDS_RECHARGE + CdtHelper.conductorBodyToString(body))
			person = CdtModel.new(response)
			person
		end

		def newRecharge(body)
			response = @request.post(@url + TRANSPORT_CARDS_RECHARGE + CdtHelper.conductorBodyToString(body), {}, false)
			person = CdtModel.new(response)
			person
		end

	end
end
