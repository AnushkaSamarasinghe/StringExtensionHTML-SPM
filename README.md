# StringExtensionHTML

A Swift Package Manager library that provides easy functionality to decode HTML entities and strip HTML tags from strings.

## Features

- **HTML Entity Decoding**: Converts HTML entities like `&quot;`, `&amp;`, `&lt;` to their corresponding characters
- **HTML Tag Stripping**: Removes all HTML tags from strings
- **Comprehensive Entity Support**: Supports all standard HTML entities including numeric and hexadecimal entities
- **Offset Tracking**: Provides offset information for each replacement to help with attribute adjustments
- **Swift Package Manager Ready**: Built specifically for SPM with modern Swift syntax

## Usage

This string extension provides two main methods, `stringByDecodingHTMLEntities` and `stringByStrippingHTMLTags`.

```swift
import StringExtensionHTML

// Decode HTML entities
let textWithEntities = "&quot;some html string with entities&nbsp;&quot;"
let decodedText = textWithEntities.stringByDecodingHTMLEntities
// Result: "some html string with entities "

// Strip HTML tags
let textWithTags = "<span><p>Some text full of <i>unwanted</i> html tags</p></span>"
let cleanText = textWithTags.stringByStrippingHTMLTags
// Result: "Some text full of unwanted html tags"
```

## Installation

### Swift Package Manager

StringExtensionHTML is available through Swift Package Manager. To install it, add the following dependency to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/AnushkaSamarasinghe/StringExtensionHTML-SPM.git", from: "master")
]
```

Or add it directly in Xcode:
1. Go to File → Add Package Dependencies
2. Enter the repository URL: `https://github.com/AnushkaSamarasinghe/StringExtensionHTML-SPM.git`
3. Select the version you want to use

### Manual Installation

Alternatively, copy `StringExtensionHTML.swift` and `HTMLEntityMapping.swift` and add those files into your Swift project. If you use this method, you can omit the line "import StringExtensionHTML" at the top of your file.

## Requirements

- iOS 15.0+
- macOS 12.0+
- tvOS 15.0+
- watchOS 8.0+
- Swift 5.9+

## Supported HTML Entities

The library supports a comprehensive set of HTML entities including:

- **XML predefined entities**: `&quot;`, `&amp;`, `&apos;`, `&lt;`, `&gt;`
- **HTML character entities**: `&nbsp;`, `&copy;`, `&reg;`, `&trade;`, etc.
- **Numeric entities**: `&#64;` (decimal), `&#x20ac;` (hexadecimal)
- **Greek letters**: `&alpha;`, `&beta;`, `&gamma;`, etc.
- **Mathematical symbols**: `&sum;`, `&prod;`, `&infin;`, etc.
- **Currency symbols**: `&euro;`, `&pound;`, `&yen;`, etc.

## Advanced Usage

For more advanced use cases, you can access the detailed decoding method:

```swift
let result = text.decodeHTMLEntities()
let decodedString = result.decodedString
let offsets = result.replacementOffsets
```

This provides both the decoded string and offset information for each replacement, which is useful for maintaining text attributes or styling.

## Migration from CocoaPods

If you're migrating from the CocoaPods version:

1. Remove the CocoaPods dependency from your Podfile
2. Add the Swift Package Manager dependency as shown above
3. Update your import statement to `import StringExtensionHTML`
4. The API remains the same, so no code changes are needed

## Author

Anushka Samarasinghe. `https://github.com/AnushkaSamarasinghe`

## License

StringExtensionHTML is available under the MIT license. See the LICENSE file for more info.

## Credits

Original solution and adaptations credit to Michael Waterfall and Martin from the Stack Overflow thread [How do I decode HTML entities in swift?](http://stackoverflow.com/questions/25607247/how-do-i-decode-html-entities-in-swift). 
