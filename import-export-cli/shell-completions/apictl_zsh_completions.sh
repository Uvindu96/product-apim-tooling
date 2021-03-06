#compdef apictl

_arguments \
  '1: :->level1' \
  '2: :->level2' \
  '3: :_files'
case $state in
  level1)
    case $words[1] in
      apictl)
        _arguments '1: :(add add-env change change-status delete export export-api export-apis export-app get-keys help import import-api import-app init install list login logout remove set uninstall update version)'
      ;;
      *)
        _arguments '*: :_files'
      ;;
    esac
  ;;
  level2)
    case $words[2] in
      uninstall)
        _arguments '2: :(api-operator help wso2am-operator)'
      ;;
      add)
        _arguments '2: :(api help)'
      ;;
      change-status)
        _arguments '2: :(api help)'
      ;;
      delete)
        _arguments '2: :(api api-product app help)'
      ;;
      export)
        _arguments '2: :(api-product help)'
      ;;
      import)
        _arguments '2: :(api-product help)'
      ;;
      install)
        _arguments '2: :(api-operator help wso2am-operator)'
      ;;
      change)
        _arguments '2: :(help registry)'
      ;;
      list)
        _arguments '2: :(api-products apis apps envs help)'
      ;;
      remove)
        _arguments '2: :(env help)'
      ;;
      update)
        _arguments '2: :(api help)'
      ;;
      *)
        _arguments '*: :_files'
      ;;
    esac
  ;;
  *)
    _arguments '*: :_files'
  ;;
esac
