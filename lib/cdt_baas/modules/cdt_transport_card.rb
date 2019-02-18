module CdtBaas

	class CdtTransportCard < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def transportCards(body)
			refreshToken
			response = @request.get(@url + TRANSPORT_CARDS + CdtHelper.conductorBodyToString(body))
			person = CdtModel.new(response)
			person
		end

		def getTransportCards(body)
			refreshToken
			response = @request.get(@url + TRANSPORT_CARDS_RECHARGE + CdtHelper.conductorBodyToString(body))
			person = CdtModel.new(response)
			person
		end

		def newRecharge(body)
			refreshToken
			response = @request.post(@url + TRANSPORT_CARDS_RECHARGE + CdtHelper.conductorBodyToString(body), {}, false)
			person = CdtModel.new(response)
			person
		end

	end
end
