# Bypass 403

Replication of a web challenge from PwC Darklabs Hack A Day competition that occurred in 2024

# Description

Can you bypass the 403?

# Setup

Run the following commands
`docker build . -t bypass-403:latest`
then 
`docker run -d -p 80:80 bypass-403`

Replace the flag with your own in `./html/index.html`
Currently it is `FLAG{FAKE_FLAG_HERE}`

# Solution

<details>
  <summary>Click to reveal spoiler</summary>
  
  Add a `X-Forwarded-For: 127.0.0.1` header to the request. You can do this either in the Network panel of your preferred browser or in Burp Suite Community/Pro Version
  
</details>
