# Win11-Powershell-Pascal
Windows11でPascalをコンパイルできるコマンドを作りました

1. [割と簡単に '標準 Pascal' を試してみたい](https://qiita.com/ht_deko/items/41e95154e8da2f901698#-window-%E3%81%A7-pascal-p5-%E3%82%92%E5%8B%95%E3%81%8B%E3%81%99)  
	↑こちらの記事の [■ Window で Pascal-P5 を動かす] 項目を進めます  
	※ここで保存したフォルダーをシステム環境変数に追加します

3. ①項目を最後まで完了させたら、rpas.ps1ファイルをダウンロードして、Powershellを開きます。

		notepad $PROFILE

	を入力します

4. PROFILEが開いたら

		$scriptPath = 'YOUR PATH\rpas.ps1'
		if (Test-Path $scriptPath) {
    		. $scriptPath
		}

	を入力して保存し、Powershellを再起動します。
  
※使用方法：
	Powershellに  
	
   		rpas ファイル名  
		
   と入力すれば動きます。  
   <img width="449" height="269" alt="image" src="https://github.com/user-attachments/assets/099af2ab-6115-419a-bb97-0cde0c4aea6f" />  
   <img width="551" height="401" alt="image" src="https://github.com/user-attachments/assets/fe297f1e-c9c2-4534-97e3-3582c173270c" />  
   ☆ファイル名の拡張子は入れなくて大丈夫です。
※rpas.ps1の15~16行目と3.のPathを該当ファイルが存在するPathに変更してください。  
  
💡 注意：  
	・P5 Pascal は ISO 7185 に準拠した簡易 Pascal のため、通常の Delphi / Free Pascal と微妙に仕様が異なります  
	・WriteLn で出力する場合は、ヘッダに output を追加するのが基本です
