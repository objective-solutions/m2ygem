module CdtBaas

	class CdtBankSlip < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def getBankSlip(body)
			refreshToken
			response = @request.get(@url + BANK_SLIP + CdtHelper.conductorBodyToString(body))
			person = CdtModel.new(response)
			person
		end

		def createBankSlipType(body)
			refreshToken
			response = @request.post(@url + BANK_SLIP + CdtHelper.conductorBodyToString(body), {}, true)
			person = CdtModel.new(response)
			person
		end

		def findBankSlip(id)
			refreshToken
			response = @request.get(@url + BANK_SLIP + id.to_s)
			person = CdtModel.new(response)
			person
		end

		def createBankSlip(id)
			refreshToken
			response = @request.get(@url + BANK_SLIP + id.to_s + '/' + INVOICE_PRINT_PATH)
			person = CdtModel.new(response)
			person
		end

		def getPDF(id)
			refreshToken
			response = @request.get(@url + BANK_SLIP + id.to_s + '/' + PDF)
			response
		end

		def register(id)
			refreshToken
			response = @request.post(@url + BANK_SLIP + id.to_s + '/' + INVOICE_REGISTER_PATH, {})
			person = CdtModel.new(response)
			person
		end

	end
end
