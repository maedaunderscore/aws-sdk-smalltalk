tests-private
testSaveExpected

	| d  keyData result |
	
	d:= DModelTest1  new.
	d id: uuid.
	d saveExpected:( JsonObject new at:'id' put:(JsonObject new at:'Exists' put: false asJsonString ; yourself); yourself).
	
	keyData := DModelTest1 new.
	keyData id: uuid.

	result := d getItem: keyData.
	
	self assert:(uuid = (result at:#id) ).
	
	d delete.