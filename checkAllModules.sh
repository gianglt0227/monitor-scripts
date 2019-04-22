#Check all module resource & status
#!/bin/bash
OS_USER=game
SCRIPT_DIR=/opt/script/monitor
MODULES=()
MODULES+=("accMan")
MODULES+=("SmartFoxServer_2X")
MODULES+=("adminAPI")
MODULES+=("svmapi")
MODULES+=("matchloader")
MODULES+=("historyloader")
MODULES+=("Ras_Loader")

for module in "${MODULES[@]}"
do
  $SCRIPT_DIR/checkSingleModuleResource.sh $module VmRSS $OS_USER
  $SCRIPT_DIR/checkSingleModuleResource.sh $module Threads $OS_USER
  $SCRIPT_DIR/checkSingleModuleStatus.sh $module $OS_USER
done
