module CdtBaas

	class CdtPhone < CdtModule
		def initialize(user, password, env)
			startModule(user, password, env)
		end

		def getPhones(body)
			response = @request.get(@url + PHONES_PATH + CdtHelper.conductorBodyToString(body))
			phonesResponse = CdtModel.new(response)
			generateResponse(phonesResponse)
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
