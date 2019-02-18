module CdtBaas

	class CdtInvoice < CdtModule

	     def initialize(user, password, env)
	        startModule(user, password, env)
	     end

	 	 def getInvoices(body)
	 	 	 refreshToken
	         response = @request.get(@url + INVOICES_PATH + CdtHelper.conductorBodyToString(body))
			 invoice = CdtModel.new(response)
			 generateResponse(invoice)
	     end

		 def createInvoice(body)
	 	 	refreshToken
			response = @request.post(@url + INVOICES_PATH, body, true)
			invoice = CdtModel.new(response)
			generateResponse(invoice)
	     end

	     def findInvoice(id)
	 	 	 refreshToken
	         response = @request.get(@url + INVOICES_PATH + id.to_s)
	         invoice = CdtModel.new(response)
	         generateResponse(invoice)
	     end


	     def registerInvoice(id)
	 	 	 refreshToken
	         response = @request.post(@url + INVOICES_PATH + id.to_s + "/" + INVOICE_REGISTER_PATH, {})
	         invoice = CdtModel.new(response)
	         generateResponse(invoice)
	     end

	     def printInvoice(id)
	 	 	 refreshToken
	         response = @request.get(@url + INVOICES_PATH + id.to_s + "/" + INVOICE_PRINT_PATH)
	         invoice = CdtModel.new(response)
	         generateResponse(invoice)
	     end


 	end

end