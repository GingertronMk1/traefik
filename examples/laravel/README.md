# BrowserSync

In order to enable BrowserSync you must pass it the following object as config

```javascript
{
  host: 'localhost',    // Self-explanatory
  proxy: 'web',         // The name of the web container
  open: false,          // Don't try to open a window
  notify: false,        // ??? idk
  port: 3000            // We're exposing port 3000
}
```