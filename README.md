# gen-infrastructure-monitoring-grafana

Suite de monitoramento do ambiente de dev.

Atualmente consiste da stack com Grafana, Prometheus, Tempo e Loki.

# Atualizações
Para atualizar a infra da task, altere o arquivo em devops/variables/parameters.json
Para adicionar novos recursos ao stack, adicione em grafana-stack.yaml
Para mudar as configurações do grafana, altere as configs em devops/grafana-config/grafana.ini
Dashboards precisam ser adicionados em devops/taask-definition/dashboards (salvar como json)
Qualquer alteração na pipeline deve ser feita no arquivo buildspec, localizado em devops/pipeline/