//%attributes = {}
ARRAY TEXT:C222($names;0)
ARRAY TEXT:C222($values;0)

WEB GET VARIABLES:C683($names;$values)

For ($i;1;Size of array:C274($names))
	Formula from string:C1601(New collection:C1472($names{$i};":=";"$1").join()).call(Null:C1517;$values{$i})
End for 