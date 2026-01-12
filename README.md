# @UI.Hidden with $edmJson

This tutorial focuses on a single, important annotation:

```
@UI.Hidden: { $edmJson: { $Path: 'isDelayed' } }
```

---

## What it does

This annotation controls **field visibility in Fiori Elements based on data**.

- When `isDelayed = true` → the field is **hidden**
- When `isDelayed = false` → the field is **visible**

The UI reacts directly to the value coming from the service.

---

## How it works

`$Path: 'isDelayed'` means:

> Use the value of the `isDelayed` property from the current entity instance.

Fiori Elements evaluates this at runtime for each row/object and hides or shows the field automatically.

---