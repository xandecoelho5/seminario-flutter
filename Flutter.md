# Flutter

### Vantagens
1. Escreva uma vez e implante(deploy) em qualquer lugar
> Com a mesma base de código é possível rodas aplicações flutter em android, IOS ou WEB.

2. Hot Reload
> Uma grande ferramenta pra desenvolvimento, que pertmite que os efeitos das mudanças feitas no código possam
ser vistas em tempo real. (Não é necessário reiniciar toda a aplicação para que as mudanças sejam feitas).

3. Desenvolvimento mais rápido
> Optando por Flutter, você tende a desenvolver a aplicação mais rápido do que quando opta por fazer aplicações nativas,
visto que o código escrito roda em todas as plataformas. 
Além de que, ao escrever apenas uma base de código, o tempo gasto com code reviews, testes e debugs pode tomar bem menos
tempo.

4. Manutenção do aplicativo é mais fácil
> Como seu aplicativo Flutter usa a mesma base de código em todas as plataformas, lançar atualizações é outro recurso
que se torna infinitamente mais contínuo e simples. Você pode lançar atualizações para seus aplicativos iOS e Android simultaneamente,
reduzindo significativamente as mudanças na infraestrutura de back-end, bem como problemas de implementação e sincronização que
frequentemente surgem quando diferentes conjuntos de desenvolvedores trabalham em diferentes plataformas.

### Desvantagens
1. Obtendo a aparência e comportamento específicos da plataforma
> Embora o Flutter permita que você execute um aplicativo de alto desempenho tanto no iOS quanto no Android com apenas uma
base de código, obter a aparência e a sensação específicas da plataforma perfeita pode ser um pouco insuficiente para o gosto dos puristas.
Se você precisa que seu aplicativo esteja estritamente em conformidade com os princípios do Material Design em dispositivos
Android e Apple Design System no iOS, você pode querer preparar dois aplicativos separados.

2. Ainda é um framework imaturo
> Comparado com as outras linguagens/frameworks para desenvolvimento que seja híbrido ou nativo (citando aqui React Native (Javascript), Kotlin, Swift, por exemplo), é possível ver que ainda falta muito para se tornar algo bem consolidado (Flutter usa Dart como sua linguagem para desenvolvimento).
As linguagens que já estão no mercado a algum tempo, já tem uma grande base de tutoriais, problemas resolvidos, entre outros conteúdos nos quais a comunidade que utiliza foram desenvolvendo.

3. Os aplicativos Flutter são bastante grandes e "pesados" para começar
> Ocupam um bom espaço no disco.

4. O framewok, assim como a linguagem Dart, estão mudando rapidamente às vezes, o que pode dificultar a manutenção do código a longo prazo.
> Um exemplo disso é: Um curso que eu peguei para fazer sobre flutter (curso era de 2020) já possuía diversas alterações em relação à versão atual. A versão na época do curso era 1.7 e a versão atual é a 2.2, nesse período algumas atualizações importantes ocorreram, de modo que foi necessário de minha parte fazer pesquisas Google para procurar soluções alternativas.

### Principais Características
1. Multiplataforma - Podemos desenvolver aplicações com Flutter em qualquer sistema operacional (Windows, Linux e MacOS);
2. Criação de aplicações nativas a partir de um único código base - Com o Flutter é possível desenvolvermos aplicações nativas para Android e iOS;
3. Acesso direto aos recursos nativos do sistema - Uma aplicação criada com Flutter possui acesso nativo aos recursos do dispositivo (câmera, wifi, memória, etc);
4. Maior desempenho - As aplicações criadas com Flutter possuem um maior desempenho quando comparadas ao React Native, por exemplo, pois todo seu código-fonte é transformado em código nativo.
5. Código aberto.

### Configurações necessárias para rodar uma aplicação (Windows) -> [referência](https://flutter.dev/docs/get-started/install/windows)

- Baixar e extrair o flutter SDK;
- Adicionar as váriaveis de ambiente do flutter da pasta flutter\bin;
  - para testar se obteve sucesso no passo acima, basta rodar "where flutter dart" no CMD (se estiver usando o PowerShell o comando é "where.exe flutter dart");
- executar o comando flutter doctor (este comando chega todo o ambiente e mostra um relatório sobre os status da sua instação do Flutter);
  - caso não apresente nenhum problema, é só prosseguir, mas caso ocorra, na documentação mencionada acima tem algumas dicas de como resolver os problemas;
- para suportar o desenvolvimento de aplicações Android (como no caso do exemplo é para uma aplicação mobile) o Flutter depende da instalação do Android Studio.
- Basicamente é apenas baixar ele normalmente e depois da instalação configurar um emulador ou usar teu próprio dispositivo android para rodar as aplicações (Informações adicionais podem ser obtidas no link acima) e por fim concordar com as licenças do Android.
- Após isso é a configuração de uma IDE para o desenvolvimento, [aqui](https://flutter.dev/docs/get-started/editor?tab=androidstudio) possui as configurações de 3 diferentes IDEs (Android Studio e IntelliJ é considerada a mesma configuração).
- no meu caso, utilizei o Android Studio:
  - tudo o que é necessário fazer, é instalar o plugin do flutter(ele já vai fazer o download do plugin do Dart como dependência)
  - para fazê-lo -> Abrir as preferências de plugin(File > Settings > Plugins), selecionar Marketplace, procurar Flutter e instalar.
  - O tutorial de criação da aplicação será feito em tempo real.

### Tipo de licença de software
[BSD-3-Clause License](https://github.com/flutter/flutter/blob/master/LICENSE)

### Responsáveis pelo desenvolvimento

- Foi criada inicialmente pelo Google.
- É grátis e de código aberto, portanto a comunidade pode participar do desenvolvimento do framework;
- para contribuição é necessário seguir várias normas, conforme: [Contributing](https://github.com/flutter/flutter/blob/master/CONTRIBUTING.md)

### Conclusões

- Inicialmente tive uma boa recepção com o framework.
  Apesar de já ter desenvolvido em Android (na faculdade) e React Native (alguns projetos externos).
  Acredito que pra mim os maiores empecilhos foram ter que lidar com uma linguagem que eu não tinha conhecimento ainda (Dart),
  mesmo ela sendo bem parecida com outras linguagens já conhecidas por mim (achei bem parecida com Java e Typescript), o
  compilador reclamava de algumas coisas que eu não sabia o que era, mas depois meio que fui entendendo os motivos.
- Não consigo ter um conclusão muito precisa, pois só cheguei a usar widgets já prontos, disponibilizados na própria
  documentação do flutter, de modo a acelerar o aprendizado inicial.

> Sobre os materiais, acredito que a documentação em si tenha um bom conteúdo, é bem separado a questão dos widgets e eles levam muito
em consideração também a conceituação do Material Design tanto pra android quanto pra IOS, disponibilizando até mesmo pacotes
que possuem widgets preparados para isso.
> Uma coisa interessante que eu não conhecia são os Codelabs, no qual meio que é um curso passo-a-passo para desenvolvimento de uma aplicação.

Sobre a configuração, achei ela relativamente fácil (apesar de ter tido um problema com o android studio, por questões de versão);
