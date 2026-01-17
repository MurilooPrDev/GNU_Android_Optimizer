# GNU Android Optimizer (GNU AO)

<p align="center">
  <img src="logo.png" width="400" title="Entendedores entenderão">
</p>

**Desenvolvido por MurilooPrDev**

O **GNU Android Optimizer** é uma ferramenta de código aberto voltada para usuários avançados que buscam o máximo de performance em dispositivos Android sem comprometer a estabilidade do sistema. Ao contrário de "RAM Boosters" comuns, o GNU AO utiliza comandos de baixo nível e uma lógica inteligente de hibernação para garantir fluidez real.

---

## 🧐 Por que o GNU AO foi criado?

A maioria dos otimizadores de Android na Play Store são "placebos": eles apenas fecham apps que o sistema reabre segundos depois, consumindo ainda mais bateria e ciclos de CPU.

O **GNU AO** foi criado para:
1.  **Dar controle real ao usuário:** Nada de processos automáticos obscuros ou anúncios.
2.  **Eficiência com Android1clear:** Uma lógica exclusiva que não apenas fecha, mas coloca apps em estado de dormência profunda (*restricted standby*).
3.  **Transparência GNU:** Código aberto, modular (C++ e Bash) e focado na filosofia Linux de eficiência.

---

## 🛠 Estrutura do Projeto

* **Android1clear:** Módulo exclusivo que hiberna apps de terceiros em segundo plano, impedindo que "acordem" sozinhos.
* **C++ Engine:** Núcleo de alta performance (compilado com Clang -O3) que gerencia limpeza de buffers, logs e otimização de escrita em disco (Trim).
* **Safety Lock:** Proteção blindada que impede qualquer alteração em serviços vitais como o **Google Play Services**, evitando instabilidade.

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
3.  Inicie o otimizador através do atalho rápido:
    ```bash
    ./AndroidO
    ```

---

## ⚠️ Avisos Importantes

* **Não apaga nada:** O GNU AO não deleta seus aplicativos nem seus dados.
* **Segurança:** O script foi desenhado para ignorar pacotes críticos do sistema (Kernel/SystemUI/GMS).
* **Uso consciente:** O uso de ferramentas de sistema via terminal é de responsabilidade do usuário.

---

## 🐛 Reportar Bugs e Sugestões

Encontrou algum comportamento estranho ou tem uma ideia para melhorar o motor C++? 
**Fale diretamente com o desenvolvedor!**

* **Dev:** MurilooPrDev
* **GitHub:** [MurilooPrDev](https://github.com/MurilooPrDev)

---

## 📄 Licença

Este projeto é distribuído sob a licença **GNU General Public License v3.0**. 

---
<p align="center"><i>GNU Android Optimizer - Performance levada a sério.</i></p>
