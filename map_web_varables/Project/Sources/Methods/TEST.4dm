//%attributes = {}
WEB START SERVER:C617

ARRAY TEXT:C222($names;1)
ARRAY TEXT:C222($values;1)

$names{1}:="Content-Type"
$values{1}:="application/x-www-form-urlencoded"

$request:="foo=var&foo2=var2"
$response:=""

WEB SET HTTP HEADER:C660($names;$values)

$url:="http://127.0.0.1/4DACTION/Method2"

$status:=HTTP Request:C1158(HTTP POST method:K71:2;$url;$request;$response;$names;$values)