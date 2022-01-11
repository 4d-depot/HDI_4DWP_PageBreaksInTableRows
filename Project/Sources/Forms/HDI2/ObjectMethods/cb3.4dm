var $table; $paragraphs : Object

If (Form:C1466.trace)
	TRACE:C157
End if 

$table:=WP Get elements:C1550(WParea2; wk type table:K81:222)[0]
$paragraphs:=WP Paragraph range:C1346($table)




//If (Form.avoidWidowsOrfans)
//WP SET ATTRIBUTES($paragraphs; wk avoid widows and orphans; wk avoid)
//Else 
//WP SET ATTRIBUTES($paragraphs; wk avoid widows and orphans; wk auto)
//End if 


If (Form:C1466.avoidWidowsOrfans)
	WP SET ATTRIBUTES:C1342(WParea2; wk avoid widows and orphans:K81:261; wk avoid:K81:276)
Else 
	WP SET ATTRIBUTES:C1342(WParea2; wk avoid widows and orphans:K81:261; wk auto:K81:105)
End if 


