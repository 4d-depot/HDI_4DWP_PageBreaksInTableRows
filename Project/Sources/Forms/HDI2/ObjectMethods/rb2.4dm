var $table : Object
var $colRows : Collection

If (Form:C1466.trace)
	TRACE:C157
End if 


$table:=WP Get elements:C1550(WParea2; wk type table:K81:222)[0]

// two ways to program :-)

If (Shift down:C543)
	
	
	// #1 based on row ranges
	
	// all can be split
	WP SET ATTRIBUTES:C1342($table; "pageBreakInsideRow"; wk auto:K81:105)
	// except first 
	WP SET ATTRIBUTES:C1342(WP Table get rows:C1475($table; 1; 1); "pageBreakInsideRow"; wk avoid:K81:276)
	// and last
	WP SET ATTRIBUTES:C1342(WP Table get rows:C1475($table; $table.rowCount; 1); "pageBreakInsideRow"; wk avoid:K81:276)
	
	
Else 
	
	// #2 based on row elements
	
	// all can be split
	WP SET ATTRIBUTES:C1342($table; "pageBreakInsideRow"; wk auto:K81:105)
	$colRows:=WP Get elements:C1550($table; wk type table row:K81:223)
	// except first 
	WP SET ATTRIBUTES:C1342($colRows[0]; "pageBreakInsideRow"; wk avoid:K81:276)
	// and last
	WP SET ATTRIBUTES:C1342($colRows[$colRows.length-1]; "pageBreakInsideRow"; wk avoid:K81:276)
	
End if 

