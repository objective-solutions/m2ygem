require "cdt_baas"
# a = CdtBaas::CdtPerson.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")



puts "testando pessoas"

# person = a.createPerson({:nome => "Caio Teste", :tipo => "PF", :sexo => "M", :cpf => "37856994843", :dataNascimento => "1990-01-18"})
# person = a.updatePerson(3113,{:nome => "1Caio Teste", :tipo => "PF", :sexo => "M", :cpf => "37856994843", :dataNascimento => "1990-01-18"})

# people = a.getPeople
# token = a.findPersonDetails(100)
# person = a.updatePersonDetails(3000,{:nome => "1Caio Teste", :tipo => "PF", :sexo => "M", :cpf => "37856994843", :dataNascimento => "1990-01-18"})


puts "testando enderecos"
#a = CdtBaas::CdtAddress.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
# zip = a.checkZip({:CEP => "01410000"})
# a.getAddresses({:idPessoa => 300})
# a.findAddress(287)


puts "testando Contas"
#a = CdtBaas::CdtAccount.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.getAccounts(50)
#a.getTimeline({:id => 30, :page => 0, :limit => 50})
#a.getTransactions({:id => 30, :page => 0, :limit => 5, :idTipoTransacao => 3})
#a.activeAccount({:id => 50})


puts "testando Serviço"
#a = CdtBaas::CdtService.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.p2pTransfer({})


puts "testando Payment" # Erro parser no retorno
#a = CdtBaas::CdtPayment.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.paymentAdjustment({})


puts "testando Boleto" # Erro parser no retorno
#a = CdtBaas::CdtBankSlip.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.getBankSlip({})
#a.findBankSlip({:id => 2})
#a.register(-1)
	

puts "testando Cartões" # Erro parser no retorno
a = CdtBaas::CdtCard.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.findCard(30)
#a.findCardData(30)
#a.getCardLimit(30)
a.createDebitCard(0, {}) # ERROR
#a.cancelCard(-1, {}) # ERROR
#a.addHolder(-1, {}) # ERROR
#a.updatePassword(-1, {}) # ERROR