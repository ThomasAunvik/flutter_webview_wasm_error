Run the following commands:

`flutter build web --wasm`

And in build/web run:

`dhttpd '--headers=Cross-Origin-Embedder-Policy=credentialless;Cross-Origin-Opener-Policy=same-origin'`

Open the browser in chromium, notice the page being responsive.

Check log, and you might see an error.

![Image](https://i.imgur.com/Y0hkHHt.png)
