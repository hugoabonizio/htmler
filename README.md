# Htmler

Htmler is a Ruby DSL to write HTML without have to close tags all time, this makes the job more pleasurable: the ruby way. With Htmler it's easy to write fast prototypes, generate static sites and (in future) serve Htmler template format pages.

---

### Example

```ruby
html {

  head {
    title { 'Hello world!' }
  }
  
  body {
    header {
      h1 { 'Site title' }
    }
    div {
      div {
        p { 'From the FIRST div' }
      }
      div {
        p { 'From the SECOND div' }
        p { '...and another one' }
      }
    }
  
  }

}
```

will generate (but compressed) this HTML...

```html
<html>
  <head>
    <title>Hello world!</title>
  </head>
  <body>
    <header>
      <h1>Site title</h1>
    </header>
    <div>
      <div><p>From the FIRST div</p></div>
      <div>
        <p>From the SECOND div</p>
        <p>...and another one</p>
      </div>
    </div>
  </body>
</html>
```