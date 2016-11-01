#########
######
###
  Empty Disk Cache
    (C) あかつきみさき(みくちぃP)

  このスクリプトについて
    「ディスクキャッシュを空にする」コマンドを実行します.

  使用方法
    Startup,Shutdownフォルダーのどちらかに入れるか,スクリプトを実行から実行してください.

  動作環境
    Adobe After Effects CC以上

  バージョン情報
    2014/10/20 Ver 1.0.0 Release
###
######
#########

EDCData = ( ->
  scriptName          = "Empty Disk Cache"
  scriptURLName       = "EmptyDiskCache"
  scriptVersionNumber = "1.0.0"
  scriptURLVersion    = 100
  canRunVersionNum    = 12.0
  canRunVersionC      = "CC"
  guid                = "{5A24F61A-8A16-41F7-A892-603D57CA59B7}"

  return{
    getScriptName         : -> scriptName
    ,
    getScriptURLName      : -> scriptURLName
    ,
    getScriptVersionNumber: -> scriptVersionNumber
    ,
    getScriptURLVersion   : -> scriptURLVersion
    ,
    getCanRunVersionNum   : -> canRunVersionNum
    ,
    getCanRunVersionC     : -> canRunVersionC
    ,
    getGuid               : -> guid
   }
)()


runAEVersionCheck = (AEVersion) ->
  if parseFloat(app.version) < AEVersion.getCanRunVersionNum()
    alert "This script requires After Effects #{AEVersion.getCanRunVersionC()} or greater.", EDCData.getScriptName()
    return false
  else
    return true

# suppressDialogs = (code) ->
#   app.beginSuppressDialogs()
#   code()
#   app.endSuppressDialogs(true)
#   return 0

emptyDiskCache = () ->
  EMPTY_DISK_CACHE = 10200
  app.executeCommand(EMPTY_DISK_CACHE)
  return 0

return 0 unless app?.project?
return 0 unless runAEVersionCheck EDCData

# suppressDialogs(emptyDiskCache)
emptyDiskCache()
return 0
