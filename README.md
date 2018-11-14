assert.ahk
===========

A unit test framework for AutoHotkey

## Installation

Install by defining the package in package.json:

```javascript
"dependencies": {
	"assert.ahk": "chunjee/assert.ahk"
}
```

```shell
yarn newinstall
```

## Usage

A class must be made that extends the `assert` class. Inside, the method name(s) must conclude with the case sensitive word 'Test'

Inside you have access to `.AssertEqual`, `.AssertFalse`, `.AssertObject`, `.AssertEmpty`, `.AssertNotEmpty`, and `.AssertObjectEqual`

```autohotkey
class ExampleTestClass extends assert {
	; All of these tests pass
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
}
```

Pass the class as an argument to `AhkUnit.AddTestClass` and execute `AhkUnit.Run()`

```autohotkey
AhkUnit.AddTestClass(ExampleTestClass)
AhkUnit.Run()
```
