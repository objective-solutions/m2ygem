module CdtBaas

	class CdtCard < CdtModule

	     def initialize(user, password, env)
	        startModule(user, password, env)
	     end


	 	 def getPhonees(body)
	         response = @request.get(@url + PHONES_PATH + CdtHelper.conductorBodyToString(body))
	         person = CdtModel.new(response)
	         person
	     end

	 	 def createPhone(body)
	         response = @request.post(@url + PHONES_PATH + CdtHelper.conductorBodyToString(body), {})
	         person = CdtModel.new(response)
	         person
	     end

	     def findPhone(id)
	         response = @request.get(@url + PHONES_PATH + id.to_s)
	         person = CdtModel.new(response)
	         person
	     end

	     def updatePhone(id, body)
	         response = @request.get(@url + PHONES_PATH + id.to_s + "/" + CdtHelper.conductorBodyToString(body))
	         person = CdtModel.new(response)
	         person
	     end

 	end

end