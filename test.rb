require "cdt_baas"


puts "testando pessoas"
#a = CdtBaas::CdtPerson.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
# person = a.createPerson({:nome => "Caio Teste", :tipo => "PF", :sexo => "M", :cpf => "37856994843", :dataNascimento => "1990-01-18"})
# person = a.updatePerson(3113,{:nome => "1Caio Teste", :tipo => "PF", :sexo => "M", :cpf => "37856994843", :dataNascimento => "1990-01-18"})
#a.getPeople(75)

# token = a.findPersonDetails(100)
# person = a.updatePersonDetails(3000,{:nome => "1Caio Teste", :tipo => "PF", :sexo => "M", :cpf => "37856994843", :dataNascimento => "1990-01-18"})


puts "testando enderecos"
#a = CdtBaas::CdtAddress.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
# zip = a.checkZip({:CEP => "01410000"})
# a.getAddresses({:idPessoa => 300})
# a.findAddress(287)


puts "testando Contas"
#a = CdtBaas::CdtAccount.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.getUserAccounts({:idPessoa => 72})
#a.getTimeline({:id => 30, :page => 0, :limit => 50})
#a.getTransactions({:id => 30, :page => 0, :limit => 5, :idTipoTransacao => 3})
#a.activeAccount({:id => 50})

#a = CdtBaas::CdtInvoice.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.createInvoice({})

puts "testando Serviço"
#a = CdtBaas::CdtService.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.p2pTransfer({})
#a.getp2pTransfer({:idAccount => 26})

puts "testando Payment"
#a = CdtBaas::CdtPayment.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
# res = a.paymentAdjustment("123")
#p a.getPayment(26)

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
#a.updatePassword(-1, {:password => "1230"})
#a.getCards({:idConta => 2})
#a.findAccountCards({:idConta => 26})

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
#a.getBankTransfers(23)

puts "testando Transport Cards"
#a = CdtBaas::CdtTransportCard.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.transportCards({}) # Parse Erro
#a.getTransportCards({}) # Parse Erro
#a.newRecharge({})

puts "testando Recargas"
#a = CdtBaas::CdtRecharge.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.rechargeReport(3) # Parse Erro
#a.newRechargeSolicitation({})
#a.getRechargeSolicitation() # Parse Erro
#a.newRechargeOrder({})
#a.confirmDealers()
#a.confirmRecharge(1, {})
#a.consultRecharge()
#a.adjustmentRecharge({})
#a.getRecharges(26)

puts "testando Billet"
#a = CdtBaas::CdtBillet.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.newRechargeSolicitation({})
#a.generateTicket({:idConta => 26, :valor => 1, :tipoBoleto => 1, :dataVencimento => "12/02/2019"})

puts "testando Usuários"
#a = CdtBaas::CdtUser.new("4pqd3c8j3gqsikcea8ltlbdccb", "1vdgm16i4695orvhbkouom1k8jr2jlgdvuqgdpiro0hoc7ebsjc3", "hml")
#a.getUsers() # undefined method `each_pair' for #<String:0x00007fdb762296e8> (NoMethodError)
#a.saveUser({})
#a.updateUser({})
#a.findUser(101) # undefined method `each_pair' for #<String:0x00007fdb762296e8> (NoMethodError)
#a.assignProfile(1, {})
