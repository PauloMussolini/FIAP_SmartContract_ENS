# MBA FIAP
# Smart contracts development 
# Prof. Glauber Duarte Monteiro

## Desenvolver Smart Contract Solidity publicado na Ropsten

## Equipe
- 334612 - Paulo de Tarso F Mussolini
- 334466 - Guilherme Scholz Ramos 
- 335129 - William Rodrigues Silva 


## Endereço do Contrato
0x6e7faae8ed3c215ad0ae19d974ee7797abeed6ed

## Hash na Ropsten
0x58850c0e401d854427487fcd19c95c8299e07c27f733d02bdbe3a8b4e6c3bc9d

## Owner do Contrato
0x1a65E13DD40d116C8d658dF30D071a36A1195396

## ENS
depressao.ens

## Resenha
Conforme instruções o Smart Contract deve conter:
- Pelo menosum método pago e um não pago
- Pelo menos um método não público
- Pelo menos uma struct, um mapping e um array
- Deploy em uma rede de teste (Ropsten, Kovan)
- Smart Contract(s) verificado(s) https://ropsten.etherscan.io/verifyContract
- ENS para o(s) Smart Contract(s)
- Projeto documentado e entregue no github

## Métodos
### Pago:
- payPartner(address _to) -> Método de pagamento entre Partners
--- Requer que ambos os address existam como partner no contrato. Deve usar o método insPartner(address _address, string memory _name) para inclusão dos partners.

### Não pagos:
- partnerExists -> Verifica existência do address como partner no contrato.
- getPartnerName -> Retorna o nome do Partner
- getPartnerNameList -> Retorna lista de todos os partners
- getPartnerAmount -> Retorna amount do partner
- insPartner -> Insere partner

### Privado
- partnerExists

## Struct
- PartnerStruct

## Mapping
- partnerMap
- amountMap

## Array
- partners

