#  Methodology

This is a step-by-step explanation of the method demonstrated in this project.

1. For each screen/context of the app that you wish to separate, create an **extension** to the `String` type in a file
appropriately named:

```
//
// String+HomeScreen.swift
//
import Foundation

extension String {
   ...
```

2. Associated with that same context, create a **.strings** file:

```
// 
// HomeScreen.strings
//
```

3. Within the `String` extension, create a private, static read-only property named `tableName` that returns
the name of the **.strings** file, _without extension_:

```
extension String {
    private static var tableName: String {
        return "HomeScreen" // must match file name of HomeScreen.strings
    }
```

4. Populate the **.strings** file as usual, using the `"key" = "value";` format:

```
// HomeScreen.strings

/* Comment is optional */
"my_key" = "MyValue";

// etc.
```

5. **Localize** the **.strings** file to all languages supported.

```
// HomeScreen.strings (Japanese)

/* Comment is optional */
"my_key" = "私のバリュー";

// etc.
```

6. For each entry in the .strings file, add a **static, readonly computed property** to the `String` extension 

```
extension String {
    //...
    
    static var myKey: String {
        return NSLocalizedString("my_key",  // MUST match key in .strings file
        tableName: tableName,               // the static property we defined at the top of the extension
                                            // (skip `bundle:`)
        value: "",                          // MUST be empty
        comment: ""                         // leave empty
        )
    }
    
    // ...
```

7. Finally, use the (localized) strings within the code as what they are: static constants of the `String` class:

```
button.setTitle(.myKey, for: .normal) 
// (results in "MyValue" when running in English, "私のバリュー" when in Japanese)
```

### Notes

Notice that with this method, you don't need to type: `String.myKey`, whenever a `String` value is expected (because of type inference),
just `.myKey` is enough.
If we instead had grouped our string constants in e.g. a struct named "Constants":
```
struct Constants {
    static let myKey = NSLocalizedString(...
    ...
}
```
...we would need to type `Constants.myKey` everywhere. This is why we implement the "constants" as static properties in a `String` extension. 
