*** Variables ***


*** Keywords ***
Abrir o site do Hurb

Clicar em "Permitir todos os cookies"
  Wait and Click  ${COOKIES}

Selecionar a opção "Pacotes"

Buscar por alguma cidade turística (Ex: Buenos Aires, Florença, Orlando) e clicar em "Pesquisar"

Selecionar um pacote de viagem

Clicar em "ESCOLHER OPÇÃO"

Escolher uma opção de viagem e clicar em "COMPRAR"

Validar as informações da "Configuração" da viagem

Validar as informações do período da viagem
  
Selecionar a opção "Boleto parcelado"

Preencher os dados de pagamento

Marcar o checkbox "Li e aceito as condições de termos de uso e política de privacidade"

Validar a informação sobre cancelamento grátis

Wait and Click
  [Arguments]                       ${ELEMENTO}  ${TEMPO}
  Wait Until Element is Visible     ${ELEMENTO}  ${TEMPO}
  Wait Until Element is Enabled     ${ELEMENTO}
  Scroll Element Into View          ${ELEMENTO}
  Click Element                     ${ELEMENTO}

Wait and Input Text
  [Arguments]                       ${ELEMENTO}  ${TEXTO}
  Wait Until Element is Visible     ${ELEMENTO}
  Wait Until Element is Enabled     ${ELEMENTO}
  Scroll Element Into View          ${ELEMENTO}
  Input Text                        ${ELEMENTO}  ${TEXTO}