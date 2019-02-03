module CdtBaas

	class CdtPayment < CdtModule

		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def payment(body)
			response = @request.post(@url + V1_PAYMENT, body, true)
			puts response
			payment = CdtModel.new(response)
			generateResponse(payment)
		end

		def paymentValidate(barCode)
			response = @request.get(@url + PAYMENT_VALIDATE + barCode)
			payment = CdtModel.new(response)
			puts payment
			generateResponse(payment)
		end

		def paymentAdjustment(idAdjustment)
			response = @request.get(@url + PAYMENT_ADJUSTMENT + idAdjustment)
			payment = CdtModel.new(response)
			generateResponse(payment)
		end

	end
end