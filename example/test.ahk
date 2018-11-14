#NoEnv
#SingleInstance, force

#include ..\export.ahk


;; All methods:
; .AssertNotEqual
; .AssertFalse
; .AssertObject
; .AssertObjectEqual
; .AssertEmpty
; .AssertNotEmpty


class ExampleTestClass extends assert {
	
	PASS_Test() {
		; .AssertEqual
		this.AssertEqual("string", "string")
		this.AssertEqual(1, 1)

		; .AssertFalse
		this.AssertFalse(false)

		; .AssertObject
		this.AssertObject({a:1})

		; .AssertEmpty
		this.AssertEmpty("")

		; .AssertNotEmpty
		this.AssertNotEmpty(A_AppData)

		; .AssertObjectEqual
		this.AssertObjectEqual({a:1},{a:1})
	}


	FAIL_Test() {
		; .AssertEqual
		this.AssertEqual("string", "strings", "This assert is intended to fail")
		this.AssertEqual(1, 1, "This assert is intended to fail")

		; .AssertFalse
		this.AssertFalse(true, "This assert is intended to fail")

		; .AssertObject
		this.AssertObject("string", "This assert is intended to fail")

		; .AssertEmpty
		this.AssertEmpty("string", "This assert is intended to fail")

		; .AssertNotEmpty
		this.AssertNotEmpty(NonExistantVariable, "This assert is intended to fail")

		; AssertObjectEqual
		this.AssertObjectEqual({a:1},{a:1,b:[1,2,3]},"This assert is intended to fail")
	}
}


AhkUnit.AddTestClass(ExampleTestClass)
AhkUnit.Run()
