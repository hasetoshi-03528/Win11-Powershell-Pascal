# C:\PowerShell\Scripts\rpas.ps1
function rpas {
    param(
            [Parameter(Mandatory=$true)]
            [string]$BaseName
        )

    # .pas ファイル確認
    $pasFile = "$BaseName.pas"
    if (-not (Test-Path $pasFile)) {
        Write-Host "❌ ファイルが見つかりません: $pasFile" -ForegroundColor Red
        return
    }

    # Pascal .bat ファイルの場所
    $pascalPath = 'YOUR PATH'

    Write-Host "🔧 コンパイル中: $pasFile" -ForegroundColor Cyan

    # compile.bat 実行
    & "$pascalPath\compile.bat" $BaseName
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ コンパイル失敗。実行を中止します。" -ForegroundColor Red
        return
    }

    Write-Host "🚀 実行中: $BaseName.p5" -ForegroundColor Green

    # p5.bat 実行
    & "$pascalPath\p5.bat" $BaseName
}