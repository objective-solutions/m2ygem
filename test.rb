require "cdt_baas"


puts "testando pessoas"
#a = CdtBaas::CdtPerson.new("==", "prod")
# person = a.createPerson({:nome => "Caio Teste", :tipo => "PF", :sexo => "M", :cpf => "37856994843", :dataNascimento => "1990-01-18"})
# person = a.updatePerson(3113,{:nome => "1Caio Teste", :tipo => "PF", :sexo => "M", :cpf => "37856994843", :dataNascimento => "1990-01-18"})
#p a.getPeople({:cpf => "44548853898"})

#p a.findPersonDetails(71)
# person = a.updatePersonDetails(3000,{:nome => "1Caio Teste", :tipo => "PF", :sexo => "M", :cpf => "37856994843", :dataNascimento => "1990-01-18"})


puts "testando enderecos"
# a = CdtBaas::CdtAddress.new("", "prod")
# zip = a.checkZip({:CEP => "01410000"})
# p a.getAddresses({:idPessoa => 3493})
#a.updateAddress(421, {})
# a.findAddress(287)


puts "testando Contas"
# a = CdtBaas::CdtAccount.new("MWNicmo4b3I2bjVjN2tidHRpZzQ0ZG5kcDA6cHJzb2tta281bDd2NzUxdGlyMzJzZDRkc212ODlwZjc1aXRtb2k0OHBxNmlrZGJuMmhs", "prod")
#p a.getUserAccounts({:idPessoa => 3342})
#p a.getAccounts('3342')
#p a.getTimeline({:id => 30, :page => 0, :limit => 50})
#p a.getTransactions({:id => 14, :page => 0})
# puts a.getUserAccounts({:cpf => "85909784510"})
#CdtBaas::CdtRequest.setToken('aa')
#a = CdtBaas::CdtInvoice.new(".", ".", "hml")
#a.createInvoice({})
#p a.createAccount({
#    "idPessoa": 14,
#    "idOrigemComercial": 1,
#    "idProduto": 1,
#    "diaVencimento": 10,
#    "valorRenda": 0,
#    "valorPontuacao": 0,
#    "idEnderecoCorrespondencia": 4,
#    "limiteGlobal": 0,
#    "limiteMaximo": 0,
#    "limiteParcelas": 0,
#    "limiteConsignado": 0,
#    "flagFaturaPorEmail": 0
#})


puts "testando Serviço"
#a = CdtBaas::CdtService.new("s", "hml")
#a.p2pTransfer({})
#puts a.findp2pTransfer({:id => 56780})

puts "testando Payment"
# a = CdtBaas::CdtPayment.new("MWNicmo4b3I2bjVjN2tidHRpZzQ0ZG5kcDA6cHJzb2tta281bDd2NzUxdGlyMzJzZDRkc212ODlwZjc1aXRtb2k0OHBxNmlrZGJuMmhs", "prod")
# p a.getReceipts({:idAccount => 11836}, 1)
# res = a.paymentAdjustment("123")
# p a.getPayment(26)

puts "testando Boleto"
#a = CdtBaas::CdtBankSlip.new("s", "hml")
#a.getBankSlip({})
#a.findBankSlip({:id => 2})
#a.register(-1)
#a.getPDF(1)

puts "testando Cartões"
# a = CdtBaas::CdtCard.new("NHBxZDNjOGozZ3FzaWtjZWE4bHRsYmRjY2I6MXZkZ20xNmk0Njk1b3J2aGJrb3VvbTFrOGpyMmpsZ2R2dXFnZHBpcm8waG9jN2Vic2pjMw==", "hml")
#p a.getLotes({:identificadorExterno => 12})
#p a.findCardData(30)
#a.getCardLimit(30)
#a.createDebitCard(0, {})
# a.cancelCard(7476, {:id_status => 3})
#p a.addHolder(1, {:id_pessoa => 14})
# p a.updatePassword(4, {:password => "1230"})
# p a.getCards({})
# p a.findAccountCards({:idConta => 7098})

puts "testando Clientes"
#a = CdtBaas::CdtClient.new("s", "hml")
#a.registerPJAccount({})

puts "testando Clientes"
#a = CdtBaas::CdtClient.new("s", "hml")
#a.registerPJAccount({})

puts "testando Documentos"
#a = CdtBaas::CdtDocument.new("s", "hml")
#a.registerDocument({})

puts "testando Tranferência bancaria"
#a = CdtBaas::CdtTransfer.new("s", "hml")
#a.bankTransfers({}) # Parser Error
#a.bankTransfersAdjustment({})
#a.getBankTransfers(23)

puts "testando Transport Cards"
# a = CdtBaas::CdtTransportCard.new(".", "prod")
# #p a.transportCards(479566800)
# p a.newRecharge({
#   "accountId":4581,	
#   "cardNumber":479566800,
#   "creditType": 1,
#   "productCode": 691,
#   "value": 0.02,
#   "amount": 0
# })

puts "testando Recargas"
#a = CdtBaas::CdtRecharge.new("s", "sshml")
#a.rechargeReport(3) # Parse Erro
#a.newRechargeSolicitation({})
#a.getRechargeSolicitation() # Parse Erro
#a.newRechargeOrder({})
#puts a.confirmDealers()
#a.confirmRecharge(1, {})
#a.consultRecharge()
#a.adjustmentRecharge({})
#p a.getRecharges(26)

puts "testando Billet"
#a = CdtBaas::CdtBillet.new("s", "hm")
#a.newRechargeSolicitation({})
#p a.generateTicket({:idConta => 50, :valor => 10.0, :tipoBoleto => 9, :dataVencimento => "2019-12-02"})

puts "testando Telefone"
# a = CdtBaas::CdtPhone.new("", "prod")
# a.getPhones({:idPessoa => 3582})

puts "testando Rate"
#a = CdtBaas::CdtRate.new(".==", "hml")
#p a.getCarrierDetails({
#    "accountId": "1",
#    "operationType": 4
#})

puts "testando Usuários"
#a = CdtBaas::CdtUser.new("s", "hml")
#a.getUsers() # undefined method `each_pair' for #<String:0x00007fdb762296e8> (NoMethodError)
#a.saveUser({})
#a.updateUser({})
#a.findUser(101) # undefined method `each_pair' for #<String:0x00007fdb762296e8> (NoMethodError)
#a.assignProfile(1, {})

puts "testando CEPs"
#a = CdtBaas::CdtCep.new(".", "prod")
#p a.ceps({:CEP => '01323050'})

puts "testando individuals"
# a = CdtBaas::CdtIndividual.new("", "prod")
# p 'a.createAccount({})'
# p a.createAccount({:name => 'teste'})
# p 'a.createPerson({})'
# p a.createPerson({})
# p 'a.findPerson({})'
# p a.findPerson(1)
# p 'a.getPersons({})'
# p a.getPersons({})
# p 'a.updatePerson({})'
# p a.updatePerson(0, {})

puts "testando schedule"
# a = CdtBaas::CdtPayment.new("", "hml")
# p a.getScheduler({}, 1)
# p a.scheduler(
# {
# "dateSchedule": "2019-10-12",
# "payload": {
#    "idAccount": 15,
#    "description": "Agendamento Teste",
#    "barCodeNumber": "413497030060000269528626839426022179751000002212",
#    "dueDate": "2019-10-14T11:40:11.000",
#    "assignor": "Test Assignor",
#    "assignorDocument": "Dock",
#    "discount": 0,
#    "interest": 0,
#    "fine": 0,
#    "amount": 1.50
# }
# }, 1)
# p a.getScheduler({}, 1)
# p a.deleteScheduler("16a5a890-d7fc-4230-a9f3-4bc04c00d38c", 1)





