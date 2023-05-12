layout: true
class: [no class]
background-image: url(./assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide5

## Consul Intentions: Defining our Service Graph
</br>
```hcl
consul intention create -<action> <source> <destination>
```
</br>

```hcl
consul intention create -allow web db
```

???

Now that we've quickly looked at how Consul helps us to handle the operational complexity, I want to show you one small example of just how Consul is redefining the way that complex microservice network routing is defined. 

To do so we'll quickly look at how Intentions are used to create the Service Graph defining which services can and can not communicate.

Routing rules defined in terms of the identity rather than IP address

- Through the use of intentions we define routing rules in a service descriptive manner rather than in a direct IP to IP pattern. 
- The service descriptive intentions allow these rules to scale independent of the number of instances of a service

Firewall rules balloon quickly! 

As an example if we had a solution where we would like to connect our web servers and our databases. If we were to have 20 web servers and 5 databases
- Traditional firewall rules that quickly becomes 100 separate firewall rules!
- Contrast that with the simplicity and readability of the intention example here where we are defining that rule in terms of the service

---
