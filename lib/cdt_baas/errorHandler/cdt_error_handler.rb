module ErrorEnum
    UnknownError = 0
    InputError = 1
end

module CdtMappedErrors
    InputError = "MethodArgumentNotValidException"
end

module CdtBaas
    class CdtErrorHandler
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
                    inputErrorHandler(cdtResponse)
                else
                    @errorType = ErrorEnum::UnknownError
                end
            end
            hasError
        end

        def inputErrorHandler(cdtResponse)
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
            end
        end
    end
end



