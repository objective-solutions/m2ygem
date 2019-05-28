require "cdt_baas"


puts "testando pessoas"
#a = CdtBaas::CdtPerson.new(".====", "hml")
# person = a.createPerson({:nome => "Caio Teste", :tipo => "PF", :sexo => "M", :cpf => "37856994843", :dataNascimento => "1990-01-18"})
# person = a.updatePerson(3113,{:nome => "1Caio Teste", :tipo => "PF", :sexo => "M", :cpf => "37856994843", :dataNascimento => "1990-01-18"})
#p a.getPeople({:id => 71})
#p a.findPersonDetails(71)
# person = a.updatePersonDetails(3000,{:nome => "1Caio Teste", :tipo => "PF", :sexo => "M", :cpf => "37856994843", :dataNascimento => "1990-01-18"})


puts "testando enderecos"
#a = CdtBaas::CdtAddress.new("s", "hml")
# zip = a.checkZip({:CEP => "01410000"})
# a.getAddresses({:idPessoa => 300})
# a.findAddress(287)


puts "testando Contas"
a = CdtBaas::CdtAccount.new("MWk5bWh2dmdtcmRidmdtODFwdGx1Z2IxbGo6Yjdya250aGM3M2sxZ2M4ZnY2Z2Vva2NsNzhiNW5hOXFzbTZyOGVlbG52NTFxZmhlNG05", "prod")
p a.getUserAccounts({:idPessoa => 17})
p a.getTimeline({:id => 30, :page => 0, :limit => 50})
p a.getTransactions({:id => 14, :page => 0})
#puts a.getUserAccounts({:cpf => "31426669828"})
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
# a = CdtBaas::CdtPayment.new("s", "hml")
# res = a.paymentAdjustment("123")
# p a.getPayment(26)

puts "testando Boleto"
#a = CdtBaas::CdtBankSlip.new("s", "hml")
#a.getBankSlip({})
#a.findBankSlip({:id => 2})
#a.register(-1)
#a.getPDF(1)

puts "testando Cartões"
a = CdtBaas::CdtCard.new("MWk5bWh2dmdtcmRidmdtODFwdGx1Z2IxbGo6Yjdya250aGM3M2sxZ2M4ZnY2Z2Vva2NsNzhiNW5hOXFzbTZyOGVlbG52NTFxZmhlNG05", "prod")
p a.getLotes({:identificadorExterno => 12})
#a.findCardData(30)
#a.getCardLimit(30)
#a.createDebitCard(0, {})
#a.cancelCard(-1, {})
#p a.addHolder(1, {:id_pessoa => 14})
#a.updatePassword(-1, {:password => "1230"})
#p a.getCards({:idConta => 14})
#a.findAccountCards({:idConta => 17})
#a.passwordValidation(26, {:password => "2809"})

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
#a = CdtBaas::CdtTransportCard.new(".", "prod")
#p a.transportCards(479566800)
#p a.newRecharge({
#  "accountId":16,	
#  "cardNumber":1,
#  "creditType": 1,
#  "productCode": 691,
#  "value": 0,
#  "amount": 0
#})

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
#a = CdtBaas::CdtPhone.new("s", "hm")
#a.getPhones({})

puts "testando Rate"
#a = CdtBaas::CdtRate.new(".", "hm")
#p a.getCarrierDetails({
#    "accountId": "16",
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