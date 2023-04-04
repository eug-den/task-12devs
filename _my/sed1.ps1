Remove-Item -Path *.conf

for($i=1;$i -le 10;$i++)
{
   $repl="website"+$i
   $text = [IO.File]::ReadAllText("template_conf").replace("`r`n", "`n").replace("XXXXXXXX", $repl)
   [IO.File]::WriteAllText("$repl.com.conf",  $text)
}


