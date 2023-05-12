layout: true
class: img-left
background-image: url(./assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide2

## Microservice Architecture - Developer Benefits

![scale:30%](./assets/images/photos/microservices1.JPG)

Microservice architecture separates the individual components of an application leading to: 

* Development agility

* Updating and deploying services independently

* Limiting the misconfiguration blast radius

???

A lot of the key struggles we highlighted of developing for monolith apps are handled via microservice architecture:

Rather than designing a single application consisting of multiple components, each individual component is abstracted to it's own microservice. Which leads to:

Development teams can focus on updating their portion of an application and release it at their own cadence independent of other development teams

If a component is aced beyond what it can handle, we are able to quickly and programmatically spin up more copies of that component

The reliability of one component is independent to the reliability of all other components

---
