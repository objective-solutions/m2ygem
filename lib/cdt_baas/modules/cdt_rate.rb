module CdtBaas

	class CdtRate < CdtModule

		def initialize(token, env)
			startModule(token, env)
		end

		def getCarrierDetails(body)
			response = @request.get(@url + RATE + CARRIER_DETAILS + CdtHelper.conductorBodyToString(body), [{:key => 'Content-Type', :value => 'application/json'}])
			response
		end

		
	end
end
