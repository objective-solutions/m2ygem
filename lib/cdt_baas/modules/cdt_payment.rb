module CdtBaas

	class CdtPayment < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def payment(body)
	 	 	refreshToken
			response = @request.post(@url + V1_PAYMENT, body, true)
			payment = CdtModel.new(response)
			generateResponse(payment)
		end

		def paymentValidate(barCode)
	 	 	refreshToken
			response = @request.get(@url + PAYMENT_VALIDATE + barCode)
			payment = CdtModel.new(response)
			generateResponse(payment)
		end

		def getPayment(id)
	 	 	refreshToken
			response = @request.get(@url + PAYMENT + ACCOUNT + id.to_s)
			payment = response
			generateResponse(payment)
		end

		def paymentAdjustment(idAdjustment)
	 	 	refreshToken
			response = @request.get(@url + PAYMENT_ADJUSTMENT + idAdjustment)
			payment = CdtModel.new(response)
			generateResponse(payment)
		end

	end
end