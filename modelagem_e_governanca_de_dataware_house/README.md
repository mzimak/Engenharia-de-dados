<b><H1>Engenharia de Dados</H1></b>

<b><H2>Modelagem, Implementação e Governança de Data Warehouses </H2></b> 
  
    - Linux, Docker, PGAdmin, ETL - Airbyte, Pentaho,
    - Google GCP ( BigQuery, Cloud Storage),
    - IAC (Terraform), Postgree SQL, Amazon RedShift,
    - Governança dos dados (Great Spectations),
    - Modelagem dimensional para Data Warehouses
      - Carga de dados - ETL Full e incremental
      - Otimizaçãop de modelos dimencionais
      - Particionamenmto de dados (Horizontal, Vertical, Range, Hash, Lista)
      - Qualidade de Dados ( Precisão, Completude, Consistência, Atualidade, Confiabilidade, Relevância )
      - Estratégia para Gov. de Qualidade de Dados ( Avaliação e Monit. Contínuos, Governança de dados, Limpesa e 
        Enriquecimento de Dados, Ferramewntas e Tecnologia, Treinamento e Concientização
      - Desafios (Volume e Variedade, Mudanças nos requisitos de Negócio, Integração de Dados de Fontes Diversas)
      - ChatGPT Para Construir Um Modelo Dimensional de Forma Segura
    - Modelo Conceitual
    - Modelo Dimensional ( Star  Schema | modelo Snowflake )
    - Modelo Lógico
    - Modelo Físico (PostgreeSQL)
      - Criação do Modelo Fisico Através do Modelo Lógico pelo ChatGPT
      - Granularidade e Agregações
      - Design de tabelas
        - Modelo Dimensional
        - Tabelas de Dimensão
        - Tabela de Fato
      - Normalização vs. Desnormalização
      - Indexação ( Indices B-tree | Bitmaps | Clusterizados e Não Clusterizados )
      - Estratégias de Indexação
      - Volumetria
        - Crescimento de dados, Granularidade, Histórico, Frequência de atualização
        - Desafios da volumentria ( Desempenho, Custos de armazenamento, Gerenciamento e Manutenção )
        - Estratégias para Gerenciar a Volumetria
          - particionamento de dados
          - Arquivamento e Purga
          - Compressão de Dados
          - Agregações Pré-calculadas
      - Documentação e Diagramas
          - Doc. Técnica (Descrição de Dados, Processos ETL, Modelos de Dados e Esquemas, Politicas de Segurança e Acessos)
          - Doc. para Usuários (Manuais e Relatórios e Dashboards )
          - Diagramas ( Entidade-Relacionamento, Dimensionais )
          - Diagramas de Arquitetura ( Fluxo de Dados, Arquitetura de Sistemas que suportam o DW ( HW e SW)
      - Slowly Changing Dimension ( SCD )
        -   SCD-Tipo 1 - Sobrescreve dados antigos
        -   SCD-Tipo 2 - Não Sobrescreve dados antigos
        -   SCD-Tipo 3 - Mantém apenas o dado atual e o anterior
        -   SCD-Tipo 4 - Que usa uma tabela de histórico, criando outra dimensão
        -   SCD-Tipo 5 - Que combina o Tipo 2 e o Tipo 3
      -  ETL e ELT
        -  AirByte e SQL
        -  Importância de Staging Area
        -  Criação e Carga de Dados da Staging Area com Airbyte
      -  Assistentes Pessoais Baseados em IA ( ChatGPT | Copilot | Gemini )
      -  Dataware House na Nuvem
        -  AWS CLI | Terraform | HCL | Amazon RedShift
        -  Internet Gateway e AWS VPC com IAC
        -  Definindo Grupo de Segurança de acesso ao DW
        -  Definindo Grupo de SubNets RedShift com IAC Para configuração de Multi-AZ  
        -  Definindo Cluster RedShift com IAC
        -  Deploy Via Terraform
      -  Data Quality
        - Precisão | Completude | Consistência | Confiabilidade Atualidade | Relevância
        - Ferramenta Great Expectations
          - Validação dos Dados | Documentação dos Dados | Monitoramento Contínuo | Auditoria e Conformidade
          - Scripts de Validações e Expectativas de teste de Qualidade
          - Gerando Documentação Web e Analizando Resultados
      - ETL Reverso

      
<b><H2>Engenharia de Dados com Airbyte, DBT e SQL </H2></b>  

      - ETL e ELT
      - AirByte
      - Airbyte – ETL e ELT Para Engenharia de Dados
      - Carga e Sincronização Incremental de Dados com AirbyteData
      - 

      
  
