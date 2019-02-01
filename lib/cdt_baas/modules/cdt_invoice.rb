module CdtBaas

	class CdtInvoice < CdtModule

	     def initialize(user, password, env)
	        startModule(user, password, env)
	     end


	 	 def getInvoices(body)
	         response = @request.get(@url + INVOICES_PATH + CdtHelper.conductorBodyToString(body))
	         person = CdtModel.new(response)
	         person
	     end

		  def createInvoice(body)
			response = @request.post(@url + INVOICES_PATH, body, true)
	        person = CdtModel.new(response)
			cdtErrorHandler = CdtErrorHandler.new
			if cdtErrorHandler.mapErrorType(person)
				cdtErrorHandler
			else 
				person
			end
	     end

	     def findInvoice(id)
	         response = @request.get(@url + INVOICES_PATH + id.to_s)
	         person = CdtModel.new(response)
	         person
	     end


	     def registerInvoice(id)
	         response = @request.post(@url + INVOICES_PATH + id.to_s + "/" + INVOICE_REGISTER_PATH, {})
	         person = CdtModel.new(response)
	         person
	     end

	     def printInvoice(id)
	         response = @request.get(@url + INVOICES_PATH + id.to_s + "/" + INVOICE_PRINT_PATH)
	         person = CdtModel.new(response)
	         person
	     end


 	end

end