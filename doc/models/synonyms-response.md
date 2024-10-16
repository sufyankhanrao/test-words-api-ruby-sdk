
# Synonyms Response

This custom type contains response for synonyms endpoint.

## Structure

`SynonymsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `word` | `String` | Required | The word that is searched. |
| `synonyms` | `Array<String>` | Required | The synonyms of the searched word. |

## Example (as JSON)

```json
{
  "word": "lovely",
  "synonyms": [
    "adorable",
    "endearing",
    "cover girl",
    "pin-up"
  ]
}
```

