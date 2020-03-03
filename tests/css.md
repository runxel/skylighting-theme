---
title: "CSS"
---

```css
@charset "UTF-8";

/* a comment */
:root {
    --myvar: calc(10vw + 10px);
}

footer {
    padding: var(--myvar);
}

code span.kw #ident {
    color: #859900 !important;
}

a[href^="#"]::after {
    content: " (here)";
}
```