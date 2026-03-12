# The `<main>` Element

## Overview

The `<main>` element represents the main content of a web page. It specifies the primary content area that directly relates to the document's central topic or application's main functionality. There should be only one `<main>` element per page, and it must not be nested inside `<article>`, `<aside>`, `<footer>`, `<header>`, or `<nav>` elements.

**Hinglish:** `<main>` element ek page ka primary content represent karta hai. Isme sirf document ke main topic se related content hota hai. Ek page mein sirf ek `<main>` element hona chahiye, aur isko article, aside, footer, header, ya nav ke andar nahi rkhna chahiye.

## Why Use `<main>`?

### Semantic HTML
The `<main>` element provides semantic meaning to both browsers and screen readers, helping them understand the page structure better.

### Accessibility
Screen readers can skip repetitive navigation and jump directly to the main content, improving user experience for people with disabilities.

### SEO & Crawlers
Search engines better understand your page's primary content, improving indexing and relevance.

### Styling & Navigation
Provides a clear section for developers to target with CSS and JavaScript for layout and functionality.

## Key Concepts

1. **Single `<main>` Element**: Only one `<main>` per page. Multiple `<main>` elements violate HTML specifications.

2. **Not Nested**: Cannot be direct child of `<article>`, `<aside>`, `<footer>`, `<header>`, or `<nav>`.

3. **Skip Link Compatible**: Enables "Skip to main content" links, a best practice for accessibility.

4. **Content Within**: Contains the primary content - articles, blog posts, product details, search results, etc.

5. **Browser Support**: Supported in all modern browsers (Chrome, Firefox, Safari, Edge).

## Best Practices

- Use one `<main>` element per page
- Place it at the top level of your body structure
- Don't repeat content outside `<main>`
- Combine with semantic sections (`<article>`, `<section>`) inside
- Ensure "Skip to main content" links point to `<main>`
- Use appropriate ARIA roles if needed (though `<main>` has implicit role)

**Hinglish:**
- Har page mein sirf ek `<main>` element use karein
- Isko body ke top level mein rakhein
- Content ko `<main>` ke bahar repeat na karein
- Semantic sections ke saath combine karein
- "Skip to main content" link banayen

## Structure Example

```html
<body>
  <header>
    <nav>...</nav>
  </header>
  
  <main>
    <article>
      <h1>Article Title</h1>
      <p>Article content...</p>
    </article>
  </main>
  
  <aside>
    <h2>Related Links</h2>
  </aside>
  
  <footer>
    <p>Footer content...</p>
  </footer>
</body>
```

## W3Schools Reference

W3Schools provides a clear explanation of the `<main>` element with easy-to-follow examples and interactive try-it-yourself code. Their page emphasizes that `<main>` should contain the dominant page content and appear only once: [W3Schools: HTML <main> Tag](https://www.w3schools.com/tags/tag_main.asp).

**Hinglish summary:** W3Schools bolta hai ki `<main>` page ka mukhya content rakhta hai aur page mein ek hi baar hona chahiye. Iska use screen readers aur search engines ko sahaj banane ke liye hota hai, aur yeh practice beginners ke liye bahut helpful examples ke saath samjhayi gayi hai.

You can visit the link and test the examples directly in the browser. They also show compatibility tables and best practices, which align with the points in this lesson.
