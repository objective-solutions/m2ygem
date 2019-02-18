
module CdtBaas

	class CdtPerson < CdtModule


     def initialize(user, password, env)
        startModule(user, password, env)
     end

     def getPeople(body)
         refreshToken
         response = @request.get(@url + PEOPLE_PATH + CdtHelper.conductorBodyToString(body))
         person = CdtModel.new(response)
         person
     end


     def findPerson(id)
         refreshToken
         response = @request.get(@url + PEOPLE_PATH + id.to_s)
         person = CdtModel.new(response)
         person
     end

     def createPerson(body)
         refreshToken
         response = @request.post(@url + PEOPLE_PATH + CdtHelper.conductorBodyToString(body), {})
         person = CdtModel.new(response)
         person
     end

     def updatePerson(id, body)
         refreshToken
         response = @request.put(@url + PEOPLE_PATH + id.to_s + "/" + CdtHelper.conductorBodyToString(body))
         person = CdtModel.new(response)
         person
     end


     def createPersonDetails(body)
         refreshToken
         response = @request.post(@url + PEOPLE_DETAILS_PATH + CdtHelper.conductorBodyToString(body), {})
         person = CdtModel.new(response)
         person
     end

     def findPersonDetails(id)
         refreshToken
         response = @request.get(@url + PEOPLE_DETAILS_PATH + id.to_s)
         person = CdtModel.new(response)
         person
     end

     def updatePersonDetails(id, body)
         refreshToken
         response = @request.get(@url + PEOPLE_DETAILS_PATH + id.to_s + "/" + CdtHelper.conductorBodyToString(body))
         person = CdtModel.new(response)
         person
     end

	end

end
