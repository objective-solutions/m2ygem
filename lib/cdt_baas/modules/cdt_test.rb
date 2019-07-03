require 'mindbody'

module CdtBaas

	class CdtTest < CdtModule

    def testeCall
      Mb.constants
    end

    def getMB
       Api::TaxesController.new().getTest()
    end

	end

end

