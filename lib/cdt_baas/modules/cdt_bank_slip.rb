module CdtBaas

	class CdtBankSlip < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def getBankSlip(body)
			response = @request.get(@url + BANK_SLIP + CdtHelper.conductorBodyToString(body))
			person = CdtModel.new(response)
			person
		end

		def createBankSlipType(body)
			response = @request.post(@url + BANK_SLIP + CdtHelper.conductorBodyToString(body), {}, true)
			person = CdtModel.new(response)
			person
		end

		def findBankSlip(id)
			response = @request.get(@url + BANK_SLIP + id.to_s)
			person = CdtModel.new(response)
			person
		end

		def createBankSlip(id)
			response = @request.get(@url + BANK_SLIP + id.to_s + '/' + INVOICE_PRINT_PATH)
			person = CdtModel.new(response)
			person
		end

		def getPDF(id)
			response = @request.get(@url + BANK_SLIP + id.to_s + '/' + PDF, [{:key => "accept", :value => "application/pdf"}])
			response
		end

		def register(id)
			response = @request.post(@url + BANK_SLIP + id.to_s + '/' + INVOICE_REGISTER_PATH, {})
			person = CdtModel.new(response)
			person
		end

	end
end
