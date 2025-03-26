# ACC Django Reservation Apps

Our classes are currently working on two Django apps. Both are reservation
systems for programs here at our school:

- [Culinary "Off The Pike" restaurant](https://github.com/ACCDjangoGirls/culinary_webapp)
- [Cosmetology Spa Days](https://github.com/ACCDjangoGirls/cosmetology_webapp)

Both of these are in their planning phase but should grow quickly over the next several weeks.

Our students will focus on writing the HTML and Python code for these apps. Publishing these applications in a production environment will likely be 
outside the scope of our class, but will be necessary to deliver our projects.

We are in need of someone who can learn about application deployment and "own" this process.

## Requirements

We will need to deploy both Django apps, on the same server that we own (they will likely both end up being subdomains on our website <gracehopper.center>). This project can start by mid-April, and will continuously integrate changes until the project is delivered in mid-May.

In addition to the Django projects, we'll need some other services that the two projects can share. We will need to setup these services and configure both and we'll need  help configuring Django apps to use them:

-A database
-A mail server (only for outgoing messages, e.g. for password resets)

Our customers and the public they serve will depend on these websites functioning dependably, so we will also need:

- SSL certificates for both apps
- A reliable backup system for data and code
- A procedure for incorporating code changes
- A monitoring system that will track uptime and alert us if the websites are unavailable
- Thorough documentation of everything involved in this process, that we can use for future maintenance and for debugging when something goes wrong

## Expected Technology

- Server: A virtual linux server
- Database: PostgreSQL
- Web Server: Gunicorn (to serve the Django apps)
- Reverse Proxy: Nginx (we could consider Caddy if there is a compelling reason)

## Extensions

If the above goes well and time allows, there are some additional features that would be nice to have:

- Gated deployments: a way to automatically run a set of tests against newly-committed code, and to automatically deploy the code if the tests pass