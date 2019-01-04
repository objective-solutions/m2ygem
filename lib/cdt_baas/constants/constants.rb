module CdtBaas
  
  #envs
  HOMOLOGATION = "hml"
  PRODUCTION = "prd"

  #urls
  URL_HML = "https://api.hml.caradhras.io/"
  URL_PRD = "https://api.caradhras.io/"

  #auth_url
  TOKEN_HML = "https://auth.hml.caradhras.io/"
  TOKEN_PRD = "https://auth.caradhras.io/"

  #paths
  TOKEN_PATH = "oauth2/token?grant_type=client_credentials"

  PEOPLE_PATH = "pessoas/"
  PEOPLE_DETAILS_PATH = "pessoas-detalhes/"
  ZIP_PATH = "ceps/"
  ADDRESSES_PATH = "enderecos/"
  PHONES_PATH = "telefones/"
  INVOICES_PATH = "boletos/"
  INVOICE_REGISTER_PATH = "registrar/"
  INVOICE_PRINT_PATH = "arquivo.pdf"
  ACCOUNT_PATH = "contas/"
  TIMELINE_PATH = "timeline/"
  TRANSACTIONS_PATH = "transacoes/"
  ACTIVE_PATH = "reativar/"
  BLOCKED_PATH = "bloquear/"
  CANCEL_PATH = "Cancelar/"
  CARD_PATH = "gerar-cartao-grafica/"
  VIRTUAL_CARD_PATH = "gerar-cartao-virtual/"
  BANK_SLIP_PATH = "gerar-boleto-recarga/"
  P2P_PATH = "p2ptransfer/"
  PAYMENT = "payments/"
  PAYMENT_VALIDATE = "payments/validate/"
  PAYMENT_ADJUSTMENT = "payments/adjustment/"
  BANK_SLIP = "boletos/"
  CARD = "cartoes/"
  CARD_CONSULT = "consultar-dados-reais/"
  PASSWORD_VALIDATION = "validar-senha/"
  LIMIT_CONSULT = "limites-disponibilidades/"
  CREATE_PF_CARD = "gerar-cartao-pf/"
  CREATE_PJ_CARD = "gerar-cartao-pj/"
  CREATE_NEW_CARD = "gerar-nova-via/"
  UNLOCKED_INCORRECT_PASSWORD = "desbloquear-senha-incorreta/"
  CREATE_DEBIT_CARD = "gerar-Cartao-pre-pago/"
  REGISTER_PASSWORD = "cadastrar-senha/"
  UNLOCKED = "desbloquear/"
  ADD_HOLDER = "atribuir-titular/"
  UPDATE_PASSWORD = "alterar-senha/"    

end
