/*
  Empty Disk Cache
    (C) あかつきみさき(みくちぃP)

  このスクリプトについて
    「すべてのメモリ & ディスクキャッシュ...」(キャッシュの削除)コマンドを実行します.

  使用方法
    1.ファイル→スクリプト→スクリプトファイルの実行から実行.

  動作環境
    Adobe After Effects CC以上

  バージョン情報
    2016/11/02 Ver 1.1.0 Update
      内部処理の変更.

    2014/10/20 Ver 1.0.0 Release
*/
/// <reference path="C:/Users/RUI/OneDrive/lib/aftereffects.d.ts/ae.d.ts"/>

(function() {
  const EMPTY_DISK_CACHE:number = 10200;
  const CAN_RUN_VERSION:number = 12.0;

  const runAEVersionCheck = function(version:number) {
    return (parseFloat(app.version) < version);
  }

  if(!runAEVersionCheck(CAN_RUN_VERSION)){
    return 0;
  }

  app.executeCommand(EMPTY_DISK_CACHE);
  return 0;
}).call(this);
