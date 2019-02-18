module CdtBaas

  class CdtUser < CdtModule

    def initialize(user, password, env)
      startModule(user, password, env)
    end

    def getUsers()
      refreshToken
      response = @request.get(@url + USER)
      userResponse = CdtModel.new(response)
      generateResponse(userResponse)
    end

    def saveUser(body)
      refreshToken
      response = @request.post(@url + USER, body, true)
      userResponse = CdtModel.new(response)
      generateResponse(userResponse)
    end

    def updateUser(id, body)
      refreshToken
      response = @request.put(@url + USER + id.to_s, body, [{:key => 'Content-Type', :value => 'application/json'}])
      userResponse = CdtModel.new(response)
      generateResponse(userResponse)
    end

    def findUser(id)
      refreshToken
      response = @request.get(@url + USER + id.to_s)
      userResponse = CdtModel.new(response)
      generateResponse(userResponse)
    end

    def signin(body)
      refreshToken
      response = @request.post(@url + USER + LOGIN, body, true)
      userResponse = CdtModel.new(response)
      generateResponse(userResponse)
    end

    def deleteUser(id)
      refreshToken
      response = @request.delete(@url + USER + id.to_s)
      userResponse = CdtModel.new(response)
      generateResponse(userResponse)
    end

    def assignProfile(userId, profileId)
      refreshToken
      response = @request.post(@url + USER + userId.to_s + '/' + ASSIGN_PROFILE + profileId.to_s, {}, true)
      userResponse = CdtModel.new(response)
      generateResponse(userResponse)
    end

    def unassignProfile(userId, profileId)
      refreshToken
      response = @request.post(@url + USER + userId.to_s + '/' + UNASSIGN_PROFILE + profileId.to_s, {}, true)
      userResponse = CdtModel.new(response)
      generateResponse(userResponse)
    end

  end

end
