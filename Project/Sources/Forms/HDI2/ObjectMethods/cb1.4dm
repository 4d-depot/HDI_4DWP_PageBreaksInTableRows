var $table : Object

If (Form:C1466.trace)
	TRACE:C157
End if 


$table:=WP Get elements:C1550(WParea2; wk type table:K81:222)[0]
If (Form:C1466.avoidBreakInsideTable)
	WP SET ATTRIBUTES:C1342($table; "pageBreakInsideTable"; wk avoid:K81:276)
Else 
	WP SET ATTRIBUTES:C1342($table; "pageBreakInsideTable"; wk auto:K81:105)
End if 

