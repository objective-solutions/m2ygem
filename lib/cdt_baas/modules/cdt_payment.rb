module CdtBaas

	class CdtPayment < CdtModule

		def initialize(token, env)
			startModule(token, env)
		end

		def payment(body)
			response = @request.post(@url + PAYMENT, body, true)
			payment = CdtModel.new(response)
			generateResponse(payment)
		end

		def paymentValidate(barCode)
			response = @request.get(@url + PAYMENT_VALIDATE + barCode)
			payment = CdtModel.new(response)
			generateResponse(payment)
		end

		def getPayment(id)
			response = @request.get(@url + PAYMENT + ACCOUNT + id.to_s)
			payment = response
			generateResponse(payment)
		end

		def paymentAdjustment(idAdjustment)
			response = @request.get(@url + PAYMENT_ADJUSTMENT + idAdjustment)
			payment = CdtModel.new(response)
			generateResponse(payment)
		end

	end
end