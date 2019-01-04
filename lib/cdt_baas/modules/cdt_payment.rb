module CdtBaas

	class CdtPayment < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def payment(body)
			response = @request.post(@url + PAYMENT + CdtHelper.conductorBodyToString(body), {}, true)
			person = CdtModel.new(response)
			person
		end

		def paymentValidate(body)
			response = @request.get(@url + PAYMENT_VALIDATE + CdtHelper.conductorBodyToString(body))
			person = CdtModel.new(response)
			person
		end

		def paymentAdjustment(body)
			response = @request.get(@url + PAYMENT_ADJUSTMENT + CdtHelper.conductorBodyToString(body))
			person = CdtModel.new(response)
			person
		end

	end
end