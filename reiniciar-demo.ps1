# Deja la demo de hooks como al inicio: código correcto, pruebas originales y bitácora vacía.
$raiz = $PSScriptRoot
Copy-Item "$raiz\.reset\notas.py" "$raiz\proyecto-demo\notas.py" -Force
Copy-Item "$raiz\.reset\test_notas.py" "$raiz\proyecto-demo\tests\test_notas.py" -Force
Remove-Item "$raiz\.claude\auditoria.log", "$raiz\.codex\auditoria.log", "$raiz\.opencode\auditoria.log" -Force -ErrorAction SilentlyContinue
Get-ChildItem "$raiz\proyecto-demo" -Recurse -Directory -Filter __pycache__ | Remove-Item -Recurse -Force
Write-Host "Demo de hooks reiniciada."
