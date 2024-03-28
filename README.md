# Projeto WordPress com Docker e Frontend em Next.js

Este projeto consiste em uma configuração do WordPress usando Docker Compose juntamente com um frontend em Next.js. Ele permite configurar e executar um ambiente de desenvolvimento local para WordPress e Next.js.

## Como começar

1. Clone este repositório em seu ambiente local:

    ```
    git clone https://github.com/seu-usuario/nome-do-repositorio.git
    ```

2. Navegue até o diretório do projeto:

    ```
    cd nome-do-repositorio
    ```

3. Inicie os serviços do Docker Compose:

    ```
    docker-compose up
    ```

    Espere até que os dois serviços (WordPress e MySQL) terminem de iniciar.

4. Acesse o painel administrativo do WordPress:

    - Abra um navegador e visite `http://localhost:8000/wp-admin`
    - Faça login com as credenciais padrão (usuário: `admin`, senha: `admin`)

5. Ative os seguintes plugins:

    - FaustJs
    - Polylang
    - WPGraphQL

    No painel administrativo do WordPress, vá para "Plugins" > "Plugins Instalados" e ative os plugins necessários para o seu projeto.

6. Instale as dependências do frontend Next.js:

    ```
    cd frontend
    npm install
    ```

7. Copie o arquivo `.env.local.sample` para `.env.local`:

    ```
    cp .env.local.sample .env.local
    ```

8. No painel administrativo do WordPress:

    - Vá para "Settings" > "Faust"
    - Copie a "Secret Key" gerada
    - Insira a URL local do frontend Next.js (normalmente `http://localhost:3000`) em `REACT_APP_FRONTEND_URL`

9. Edite o arquivo `.env.local`:

    - Abra o arquivo `.env.local` em um editor de texto
    - Cole a "Secret Key" gerada na etapa anterior em `REACT_APP_FAUST_SECRET_KEY`
    - Insira a URL do WordPress (normalmente `http://localhost:8000`) em `REACT_APP_WORDPRESS_URL`

10. Configure as permalinks no WordPress:

    - No painel administrativo do WordPress, vá para "Settings" > "Permalinks"
    - Selecione uma das opções de permalink (exceto "Plain")

Agora você configurou com sucesso o projeto e está pronto para começar a desenvolver! 
Se precisar de ajuda adicional, consulte a [documentação oficial do FaustJS](https://faustjs.io)