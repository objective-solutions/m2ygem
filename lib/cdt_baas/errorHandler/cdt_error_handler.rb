module ErrorEnum
    UnknownError = 0
    InputError = 1
end

module CdtMappedErrors
    InputError = "MethodArgumentNotValidException"
end

module CdtBaas
    class CdtErrorHandler
        attr_accessor :errorType, :message, :reasons, :status

        def initialize()
            @errorType = nil
            @message = ""
            @reasons = []
            @status = 400
        end

        def mapErrorType(cdtResponse)
            @message = ""
            @errorType = nil
            hasError = false
            if !cdtResponse[:exception].nil?
                hasError = true
                @message = cdtResponse[:exception]
                case cdtResponse[:exception]
                when CdtMappedErrors::InputError
                    @errorType = ErrorEnum::InputError
                    @status = 422
                else
                    @errorType = ErrorEnum::UnknownError
                end
                generateReasons(cdtResponse)
            end
            hasError
        end

        def generateReasons(cdtResponse)
            @reasons = []
            if !cdtResponse[:erros].nil?
                cdtResponse[:erros].each do |error|
                    reasonMessage = ""
                    if !error["field"].nil?
                        reasonMessage += error["field"]
                    end
                    if !error["defaultMessage"].nil?
                        reasonMessage += " " + error["defaultMessage"]
                    end
                    @reasons << reasonMessage
                end
            elsif !cdtResponse[:message].nil?
                reasons << cdtResponse[:message]
            end
        end
    end
end



