# Проект с примерами Gloo в OpenShift

Содержит скрипты установки в различных конфигурациях


## Установка Gloo в выделенном namespace без istio [gloo-standalone]

Конфигурация установки gloo-standalone находится в директории gloo-standalone.
Для установки используется helm chart'ы Gloo.
Перед установкой необходимо выполнить скрипт `prerequisites.sh`. В нем создается проект и добавляются репозитории helm chart'ов.
Все скрипты необходимо запускать из директории `gloo-standalone`:

```
./prerequisites.sh
```

Открыть на редактирование scc `oc edit scc restricted` и добавить/заменить тип fsGroup как показано ниже (https://github.com/CrunchyData/postgres-operator/issues/517):
```
fsGroup:
  type: RunAsAny
```

Для установки самого Gloo необходимо выполнить скрипт установки:

```
# для установки вместе в read-only UI
./install-gloo-os-with-ui.sh
# или для установки без read-only UI
./install-gloo.sh
```

Переопределенные параметры для helm chart-ов описаны в `os-values-with-ui.yaml` и в `os-values.yaml` в зависимости от типа установки.


### Запуск Gloo Dashboard

Gloo Dashboard можно запустить используя утилиту glooctl, которая прокинет порт на localhost:
```
glooctl dashboard
```

или пройти по ссылке [gloo-ui.apps-crc.testing](http://gloo-ui.apps-crc.testing).