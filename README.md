# 🚀 GNU Android Optimizer (GNU AO)

**Desenvolvido por MurilooPr**

O **GNU Android Optimizer** é uma ferramenta de código aberto voltada para usuários avançados que buscam o máximo de performance em dispositivos Android sem comprometer a estabilidade do sistema. Ao contrário de "RAM Boosters" comuns, o GNU AO utiliza comandos de baixo nível e uma lógica inteligente de hibernação para garantir fluidez real.

---

## 🧐 Por que o GNU AO foi criado?

A maioria dos otimizadores de Android na Play Store são "placebos": eles apenas fecham apps que o sistema reabre segundos depois, consumindo ainda mais bateria. 

O **GNU AO** foi criado para:
1.  **Dar controle real ao usuário:** Nada de processos automáticos obscuros.
2.  **Eficiência com Android1clear:** Uma lógica que não apenas fecha, mas coloca apps em estado de dormência profunda (*restricted standby*).
3.  **Transparência GNU:** Código aberto, modular (C++ e Bash) e focado na filosofia Linux de eficiência.

---

## 🛠 Estrutura do Projeto

* **Android1clear:** Módulo exclusivo que hiberna apps de terceiros em segundo plano, impedindo que "acordem" sozinhos e consumam RAM desnecessária.
* **C++ Engine:** Núcleo de alta performance que gerencia limpeza de buffers, logs e otimização de escrita em disco (Trim).
* **Safety Lock:** Proteção blindada que impede qualquer alteração em serviços vitais como o **Google Play Services**, evitando "bricks" ou instabilidade.

---

## 🚀 Como Usar

### Pré-requisitos
* **Termux** instalado.
* Acesso **ADB** (via Wireless Debugging) ou **Root**.
* Compiladores instalados (`pkg install clang make`).

### Instalação e Execução
1.  Entre na pasta do projeto:
    ```bash
    cd GNU_AO
    ```
2.  Compile o núcleo (apenas na primeira vez):
    ```bash
    make
    ```
3.  Inicie o otimizador:
    ```bash
    ./AndroidO
    ```

---

## ⚠️ Avisos Importantes

* **Não apaga nada:** O GNU AO não deleta seus aplicativos. Ele apenas gerencia como eles consomem recursos enquanto não estão em uso.
* **Segurança:** O script foi desenhado para ignorar pacotes críticos do sistema.
* **Uso consciente:** Embora seguro, o uso de ferramentas de sistema é de responsabilidade do usuário.

---

## 🐛 Reportar Bugs e Sugestões

Encontrou algum comportamento estranho? Tem uma ideia para o módulo `Android1clear`? 
**Fale diretamente com o desenvolvedor!**

* **Dev:** MurilooPr
* **Onde:** Você pode me encontrar no GitHub ou enviar seu feedback para que possamos melhorar o motor C++.

---

## 📄 Licença

Este projeto é distribuído sob a licença **GNU General Public License v3.0**. 
Livre para modificar, livre para distribuir, desde que mantenha a transparência do código.

---
*GNU Android Optimizer - Performance levada a sério.*
