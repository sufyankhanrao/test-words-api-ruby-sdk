
# Frequency Details

This model contains frequency details of a specific word.

## Structure

`FrequencyDetails`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `zipf` | `Float` | Required | Explains the zipf score. |
| `per_million` | `Float` | Required | Explains the perMillion score. |
| `diversity` | `Float` | Required | Explains the diversity score. |

## Example (as JSON)

```json
{
  "zipf": 4.81,
  "perMillion": 64.22,
  "diversity": 0.2
}
```

