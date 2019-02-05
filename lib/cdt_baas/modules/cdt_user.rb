module CdtBaas

  class CdtUser < CdtModule

    def initialize(user, password, env)
      startModule(user, password, env)
    end

    def getUsers()
      response = @request.get(@url + USER)
      userResponse = CdtModel.new(response)
      generateResponse(userResponse)
    end

    def saveUser(body)
      response = @request.post(@url + USER, body, true)
      userResponse = CdtModel.new(response)
      generateResponse(userResponse)
    end

    def updateUser(id, body)
      response = @request.put(@url + USER + id.to_s, body, true)
      userResponse = CdtModel.new(response)
      generateResponse(userResponse)
    end

    def findUser(id)
      response = @request.get(@url + USER + id.to_s)
      userResponse = CdtModel.new(response)
      generateResponse(userResponse)
    end

    def signin(body)
      response = @request.post(@url + USER + LOGIN, body, true)
      userResponse = CdtModel.new(response)
      generateResponse(userResponse)
    end

    def deleteUser(id)
      response = @request.delete(@url + USER + id.to_s)
      userResponse = CdtModel.new(response)
      generateResponse(userResponse)
    end

    def assignProfile(id, body)
      response = @request.post(@url + USER + id.to_s + '/' + ASSIGN_PROFILE + CdtHelper.conductorBodyToString(body), {}, true)
      person = CdtModel.new(response)
      person
    end

    def unassignProfile(id, body)
      response = @request.post(@url + USER + id.to_s + '/' + UNASSIGN_PROFILE + CdtHelper.conductorBodyToString(body), {}, true)
      person = CdtModel.new(response)
      person
    end

  end

end
