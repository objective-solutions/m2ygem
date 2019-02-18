module CdtBaas

	class CdtCard < CdtModule

	     def initialize(user, password, env)
	        startModule(user, password, env)
	     end

	 	 def findCard(id)
			 refreshToken
	         response = @request.get(@url + CARD + id.to_s)
	         person = CdtModel.new(response)
	         person
	     end

	 	 def findAccountCards(body)
			 refreshToken
	         response = @request.get(@url + CARD + CdtHelper.conductorBodyToString(body))
	         person = CdtModel.new(response)
	         person
	     end

	 	 def getCards(body)
	 	 	 refreshToken
	         response = @request.get(@url + CARD + CdtHelper.conductorBodyToString(body))
	         person = CdtModel.new(response)
	         person
	     end

	 	 def findCardData(id)
	 	 	 refreshToken
	         response = @request.get(@url + CARD + id.to_s + '/' + CARD_CONSULT)
	         person = CdtModel.new(response)
	         person
	     end

	     def passwordValidation(id, body)
	 	 	 refreshToken
	         response = @request.get(@url + CARD + id.to_s + '/' + PASSWORD_VALIDATION, [{:key => 'senha', :value => body[:password]}])
	         person = CdtModel.new(response)
	         person
	     end

	     def getCardLimit(id)
	 	 	 refreshToken
	         response = @request.get(@url + CARD + id.to_s + "/" + LIMIT_CONSULT)
	         person = CdtModel.new(response)
	         person
	     end

	     def createPfCard(body)
	 	 	 refreshToken
	         response = @request.post(@url + CREATE_PF_CARD + CdtHelper.conductorBodyToString(body), {})
	         person = CdtModel.new(response)
	         person
	     end

	     def createPjCard(body)
	 	 	 refreshToken
	         response = @request.post(@url + CREATE_PJ_CARD + CdtHelper.conductorBodyToString(body), {})
	         person = CdtModel.new(response)
	         person
	     end

	     def blockCard(id, body)
	 	 	 refreshToken
	         response = @request.post(@url + CARD + id.to_s + '/' + BLOCKED_PATH + CdtHelper.conductorBodyToString(body), {})
	         person = CdtModel.new(response)
	         person
	     end

	     def createNewCard(id)
	 	 	 refreshToken
	         response = @request.post(@url + CARD + id.to_s + '/' + CREATE_NEW_CARD, {})
	         person = CdtModel.new(response)
	         person
	     end

	     def unlockedIncorrectPassword(id)
	 	 	 refreshToken
	         response = @request.post(@url + CARD + id.to_s + '/' + UNLOCKED_INCORRECT_PASSWORD, {})
	         person = CdtModel.new(response)
	         person
	     end

	     def unlocked(id)
	 	 	 refreshToken
	         response = @request.post(@url + CARD + id.to_s + '/' + UNLOCKED, {})
	         person = CdtModel.new(response)
	         person
	     end

	     def createDebitCard(id, body)
	 	 	 refreshToken
	         response = @request.post(@url + CARD + id.to_s + '/' + CREATE_DEBIT_CARD + CdtHelper.conductorBodyToString(body), {})
	         person = CdtModel.new(response)
	         person
	     end

	     def registerPassword(id, body)
	 	 	 refreshToken
	         response = @request.post(@url + CARD + id.to_s + '/' + REGISTER_PASSWORD + CdtHelper.conductorBodyToString(body), {})
	         person = CdtModel.new(response)
	         person
	     end

	   	 def cancelCard(id, body)
	 	 	 refreshToken
	         response = @request.post(@url + CARD + id.to_s + '/' + CANCEL_PATH + CdtHelper.conductorBodyToString(body), {})
	         person = CdtModel.new(response)
	         person
	     end

	   	 def addHolder(id, body)
	 	 	 refreshToken
	         response = @request.put(@url + CARD + id.to_s + '/' + ADD_HOLDER + CdtHelper.conductorBodyToString(body))
	         person = CdtModel.new(response)
	         person
	     end

	   	 def updatePassword(id, body)
	 	 	 refreshToken
	         response = @request.put(@url + CARD + id.to_s + '/' + UPDATE_PASSWORD, {}, [{:key => 'senha', :value => body[:password]}])
	         person = CdtModel.new(response)
	         person
	     end

	     def createPrepaidCard(body)
	 	 	 refreshToken
	         response = @request.post(@url + CARD + PRE_PAID + CdtHelper.conductorBodyToString(body), {})
	         person = CdtModel.new(response)
	         person
	     end
 	end

end