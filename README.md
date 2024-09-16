
# Sistema de Agendamento e Gestão de Consultas
![img](/imagesReadme/banner.png)
Este projeto é um sistema web desenvolvido em **Flutter Web** para gerenciar e agendar consultas em um consultório de fisioterapia. O sistema inclui autenticação de usuários e armazenamento de dados utilizando o **Firebase Auth** e o **Firebase Realtime Database**.


# Detalhamento

O sistema que você está desenvolvendo precisa gerenciar o agendamento de consultas e garantir o pagamento correto aos especialistas. Aqui está uma abordagem detalhada para resolver o problema:

1.  Registro de Pagamento Antecipado: Quando o paciente paga por múltiplas sessões (ex: 5 sessões), o sistema registra o valor total pago e distribui as sessões ao longo dos dias agendados.

2. Registro de Atendimentos por Especialista: Para cada consulta, o sistema permite que o recepcionista registre qual especialista realizou o atendimento naquele dia. Isso será feito sessão por sessão, garantindo que diferentes especialistas possam ser atribuídos ao mesmo paciente.

3. Relatório de Consultas e Pagamentos: O sistema deve gerar um relatório detalhado no final do mês (ou em qualquer outro período) que mostre:

    1. Quantas sessões cada especialista realizou.

    2.  Quanto cada especialista tem a receber, de acordo com o percentual de 40% por consulta atendida.
    3. O valor total que entrou no consultório com base nos pagamentos realizados pelos pacientes.

4. Controle Financeiro Transparente: O sistema também deve contabilizar o saldo de cada especialista, de forma que, ao final do mês, o valor devido a cada um esteja claro e correto.

## Funcionalidades

- **Autenticação de Usuários**: Login seguro com Firebase Authentication (e-mail/senha).
- **Agendamento de Consultas**: A recepção pode agendar consultas facilmente para os pacientes.
- **Gestão de Especialistas**: Registrar o especialista que atendeu cada consulta para controle de pagamento.
- **Relatórios de Receitas**: Geração de relatórios mensais indicando o total recebido e quanto cada especialista deve receber com base nos atendimentos realizados.
- **Pagamentos**: Controle financeiro baseado em múltiplas sessões pagas antecipadamente, distribuindo o valor para os especialistas conforme os atendimentos.

## Tecnologias Utilizadas

- **Flutter Web**: Para a construção da interface responsiva e moderna do sistema.
- **Firebase Authentication**: Para gerenciar a autenticação e o controle de acesso dos usuários.
- **Firebase Realtime Database**: Para armazenar informações sobre os pacientes, consultas, pagamentos, e relatórios de forma eficiente e em tempo real.


## Estrutura do Projeto

O projeto segue uma estrutura modularizada, com pastas para organização do código:

```

├── back-end/               # projeto back end em node nextJS
├── front-end/              # projeto front end em flutter web
├── docs/                   # Documentos,Fluxogramas              
└── README.md               # Especificações do projeto
```

## Colaboradores Universitarios

<table>
    <tr>
        <td align="center">
            <img src="https://github.com/marco0antonio0.png?size=100px" alt="marco0antonio0" width="100"
                alt="Marco Antonio"><br>
            <a href="https://github.com/marco0antonio0">@Marco Antonio</a>
        </td>
        <td align="center">
            <img src="https://github.com/AlexsandroFernandesNascimento.png?size=100px" width="100"
                alt=""><br>
            <a href="https://github.com/AlexsandroFernandesNascimento">@Alex Fernandes</a>
        </td>
        <td align="center">
            <img src="https://github.com/gabrielhpmaia.png?size=100px" width="100"
                alt=""><br>
            <a href="https://github.com/gabrielhpmaia">@Gabriel H. P. Maia</a>
        </td>
        <td align="center">
            <img src="https://static-00.iconduck.com/assets.00/github-emoji-2048x2021-w2ge0ghn.png" width="100" alt=""><br>
            <a href="#">@Bea</a>
        </td>
        <td align="center">
            <img src="https://static-00.iconduck.com/assets.00/github-emoji-2048x2021-w2ge0ghn.png" width="100"
                alt="Iago"><br>
            <a href="#">@Vinicius S</a>
        </td>
    </tr>
</table>
