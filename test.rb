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

a = CdtBaas::CdtInvoice.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
a.createInvoice({})
puts "testando Serviço"
#a = CdtBaas::CdtService.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.p2pTransfer({})


puts "testando Payment"
#a = CdtBaas::CdtPayment.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.paymentAdjustment({})


puts "testando Boleto"
#a = CdtBaas::CdtBankSlip.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.getBankSlip({})
#a.findBankSlip({:id => 2})
#a.register(-1)
	

puts "testando Cartões"
#a = CdtBaas::CdtCard.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.findCard(30)
#a.findCardData(30)
#a.getCardLimit(30)
#a.createDebitCard(0, {})
#a.cancelCard(-1, {})
#a.addHolder(-1, {})
#a.updatePassword(-1, {})

puts "testando Clientes"
#a = CdtBaas::CdtClient.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.registerPJAccount({})

puts "testando Clientes"
#a = CdtBaas::CdtClient.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.registerPJAccount({})

puts "testando Documentos"
#a = CdtBaas::CdtDocument.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.registerDocument({})

puts "testando Tranferência bancaria"
#a = CdtBaas::CdtTransfer.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.bankTransfers({}) # Parser Error
#a.bankTransfersAdjustment({})

puts "testando Transport Cards"
#a = CdtBaas::CdtTransportCard.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.transportCards({}) # Parse Erro
#a.getTransportCards({}) # Parse Erro
#a.newRecharge({})

puts "testando Recargas"
# a = CdtBaas::CdtRecharge.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.rechargeReport() # Parse Erro
#a.newRechargeSolicitation({})
#a.getRechargeSolicitation() # Parse Erro
#a.newRechargeOrder({})
#a.confirmDealers()
#a.confirmRecharge(1, {})
#a.consultRecharge()
#a.adjustmentRecharge({})

puts "testando Usuários"
#a = CdtBaas::CdtUser.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.getUsers() # undefined method `each_pair' for #<String:0x00007fdb762296e8> (NoMethodError)
#a.saveUser({})
#a.updateUser({})
#a.findUser(101) # undefined method `each_pair' for #<String:0x00007fdb762296e8> (NoMethodError)
#a.assignProfile(1, {})