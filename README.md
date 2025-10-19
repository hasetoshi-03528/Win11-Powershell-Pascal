# Win11-Powershell-Pascal
Windows11でPascalをコンパイルできるコマンドを作りました

1. [割と簡単に '標準 Pascal' を試してみたい](https://qiita.com/ht_deko/items/41e95154e8da2f901698#-window-%E3%81%A7-pascal-p5-%E3%82%92%E5%8B%95%E3%81%8B%E3%81%99)  
	↑こちらの記事の [■ Window で Pascal-P5 を動かす] 項目を進めます

2. ①項目を最後まで完了させたら、rpas.ps1ファイルをダウンロードして、Powershellを開きます。

		notepad $PROFILE

	を入力します

3. PROFILEが開いたら

		$scriptPath = 'YOUR PATH\rpas.ps1'
		if (Test-Path $scriptPath) {
    		. $scriptPath
		}

	を入力して保存し、Powershellを再起動します。

※rpas.ps1の15~16行目と3.のPathを該当ファイルが存在するPathに変更してください。
