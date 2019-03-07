require 'json'

module CdtBaas
	class CdtHelper
		
		def self.homologation?(env)
			env == HOMOLOGATION
		end

		def self.saveToken(basic,token)
			puts "basic : #{basic}"
			puts "basic : #{basic}"
			puts "basic : #{basic}"
			puts "basic : #{basic}"
			puts "basic : #{basic}"
			puts "token : #{token}"
			if !token.nil?
				ENV["CDT_TOKEN#{basic}"] = token.to_s
				ENV["CDT_TOKEN_EXPIRY#{basic}"] = (Time.now + 1500).to_s
			end

			puts "env : " + ENV["CDT_TOKEN#{basic}"].to_s

		end

		def self.shouldRefreshToken?(basic)
			puts "refresh_basic : #{basic}"
			puts "refresh_basic : #{basic}"
			puts "refresh_basic : #{basic}"

			finish_date = ENV["CDT_TOKEN_EXPIRY#{basic}"]
			finish_date.nil? || (Time.parse(finish_date.to_s) - 500) < Time.now
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
			response
		end
	end
end


