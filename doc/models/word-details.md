
# Word Details

This custom type stores word information.

## Structure

`WordDetails`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `definition` | `String` | Optional | Explains the definition of the word. |
| `part_of_speech` | `String` | Optional | Explains what part of speech the word is. |
| `synonyms` | `Array<String>` | Optional | The list of synonyms. |
| `type_of` | `Array<String>` | Optional | List of words that are more general than the searched word. |
| `has_types` | `Array<String>` | Optional | More specific examples of types of searched word. |
| `derivation` | `Array<String>` | Optional | The derivation if any. |
| `examples` | `Array<String>` | Optional | The usage examples of word if any. |
| `antonyms` | `Array<String>` | Optional | List of antonyms for the searched word. |
| `verb_group` | `Array<String>` | Optional | The verb group of the searched word. |
| `has_parts` | `Array<String>` | Optional | Words that are parts of the searched word. |
| `has_substances` | `Array<String>` | Optional | Words that are substances of the searched word. |
| `entails` | `Array<String>` | Optional | Words that are implied by the searched word. Usually used for verbs. |

## Example (as JSON)

```json
{
  "definition": "coil the spring of (some mechanical device) by turning a stem",
  "partOfSpeech": "verb",
  "synonyms": [
    "wind up"
  ],
  "entails": [
    "turn"
  ],
  "typeOf": [
    "fasten",
    "tighten"
  ],
  "hasTypes": [
    "rewind"
  ],
  "derivation": [
    "winder"
  ],
  "examples": [
    "wind your watch"
  ]
}
```

