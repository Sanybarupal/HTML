# HTML Forms

## Overview

HTML forms allow users to input data and send it to a server. Forms are essential for user interaction on websites.

## Form Elements

- `<form>`: Container for form elements.
- `<input>`: Various input types (text, email, password, etc.).
- `<textarea>`: Multi-line text input.
- `<label>`: Labels for form controls.
- `<button>` or `<input type="submit">`: Submit button.

## Attributes

- `action`: URL to send form data.
- `method`: HTTP method (GET or POST).
- `name`: Name of the form control.
- `required`: Makes field mandatory.

## Example

```html
<form action="/submit" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>
    <input type="submit" value="Submit">
</form>
```

## Practice Tasks

1. Create a contact form with name, email, and message.
2. Add validation attributes.
3. Style the form.

## Interview Questions

1. What is the purpose of HTML forms?
2. What are the different input types?
3. How does form validation work in HTML?