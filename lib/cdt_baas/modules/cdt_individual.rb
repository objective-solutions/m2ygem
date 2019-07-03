
module CdtBaas

	class CdtIndividual < CdtModule

        def initialize(token, env)
            startModule(token, env)
        end

        def createAccount(body)
            response = @request.post(@url + INDIVIDUALS_ACCOUNTS + CdtHelper.conductorBodyToString(body), {})
            person = CdtModel.new(response)
            person
        end

        def createPerson(body)
            response = @request.post(@url + INDIVIDUALS + CdtHelper.conductorBodyToString(body), {})
            person = CdtModel.new(response)
            person
        end

        def findPerson(id)
            response = @request.get(@url + INDIVIDUALS + id.to_s)
            person = CdtModel.new(response)
            person
        end

        def getPersons(body)
            response = @request.get(@url + INDIVIDUALS + + CdtHelper.conductorBodyToString(body))
            person = CdtModel.new(response)
            person
        end

        def updatePerson(id, body)
            response = @request.put(@url + INDIVIDUALS + id.to_s + "/" + CdtHelper.conductorBodyToString(body))
            person = CdtModel.new(response)
            person
        end

	end

end
