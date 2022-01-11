var $table : Object

If (Form:C1466.trace)
	TRACE:C157
End if 

$table:=WP Get elements:C1550(WParea2; wk type table:K81:222)[0]
WP SET ATTRIBUTES:C1342($table; "pageBreakInsideRow"; wk auto:K81:105)

