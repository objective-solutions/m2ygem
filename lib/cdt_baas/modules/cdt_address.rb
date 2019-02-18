module CdtBaas

	class CdtAddress < CdtModule

	     def initialize(user, password, env)
	        startModule(user, password, env)
	     end

	 	 def checkZip(body)
	 	 	 refreshToken
	         response = @request.get(@url + ZIP_PATH + CdtHelper.conductorBodyToString(body))
	         person = CdtModel.new(response)
	         person
	     end

	 	 def getAddresses(body)
	 	 	 refreshToken
	         response = @request.get(@url + ADDRESSES_PATH + CdtHelper.conductorBodyToString(body))
	         person = CdtModel.new(response)
	         person
	     end

	 	 def createAddress(body)
	 	 	 refreshToken
	         response = @request.post(@url + ADDRESSES_PATH + CdtHelper.conductorBodyToString(body), {})
	         person = CdtModel.new(response)
	         person
	     end

	     def findAddress(id)
	     	 refreshToken
	         response = @request.get(@url + ADDRESSES_PATH + id.to_s)
	         person = CdtModel.new(response)
	         person
	     end

	     def updateAddress(id, body)
	     	 refreshToken
	         response = @request.get(@url + ADDRESSES_PATH + id.to_s + "/" + CdtHelper.conductorBodyToString(body))
	         person = CdtModel.new(response)
	         person
	     end

 	end

end