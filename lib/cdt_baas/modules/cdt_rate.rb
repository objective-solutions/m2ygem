module CdtBaas

	class CdtRate < CdtModule

		def initialize(token, env)
			startModule(token, env)
		end

		def getCarrierDetails(body)
			response = @request.get(@url + CARRIER + CARRIER_DETAILS + CdtHelper.conductorBodyToString(body))
			person = CdtModel.new(response)
			person
		end

		
	end
end
