require 'json'

module CdtBaas
	class CdtHelper
		
		def self.homologation?(env)
			env == HOMOLOGATION
		end

		def self.saveToken(token)
			if !token.nil?
				ENV["CDT_TOKEN"] = token.to_s
				ENV["CDT_TOKEN_EXPIRY"] = (Time.now + 3600).to_s
			end
		end

		def self.shouldRefreshToken?
			finish_date = ENV["CDT_TOKEN_EXPIRY"]
			puts 'Tempo para expiração do token ' + finish_date.to_s + ' - ' + Time.now.to_s
			finish_date.nil? || finish_date.to_time < Time.now
		end


		def self.conductorBodyToString(json)
			string = "?"
			arr = []
			json.keys.each do |key|
				if !json[key].nil?
					arr << key.to_s + "=" + json[key].to_s
				end
			end
			string + arr.join("&")
		end

		def self.generate_general_response(input)
			cdtErrorHandler = CdtErrorHandler.new
			response = {}
			if cdtErrorHandler.mapErrorType(input)
				response = {
						success: false,
						error: cdtErrorHandler
				}
			else
				response = {
						success: true,
						content: input
				}
			end
			puts 'generateResponse'
			puts response
			response
		end
	end
end


