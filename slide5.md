layout: true
class: img-left
background-image: url(./assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide5

## Consul - Hashicorp's Service Mesh Solution

![scale:30%](./assets/images/photos/consul.JPG)

Discovery: Connect Services with a dynamic registry

Configuration: Configure Services with runtime configs

Segmentation: Secure Services based on identity

???

Discovery: Connect Services with a dynamic registry
- As services come online they get registered within Consul's central registry. 
- Consul acts as a single source of truth that allows your services to query and communicate with each other
    Ex. When service A wants to communicate with Service B it queries the registry rather than having hard coded routes.
- Consul's service discovery capabilities help you discover, track and monitor the health of services within a network. 

Configuration: Configure Services with runtime configs
- Platform agnostic (VMs, containers, serverless technologies, or with contianer orchestration platforms)
- Designed for dynamic configuration based on service and node state rather than static configurations
- Integrated health checks allow for automated routing of traffic away from unhealthy nodes
- Consul can be integrated with Terraform "Consul-Terraform-Sync (CTS) automates updates to network infrastructure based on dynamic changes to each service.

Segmentation: Secure Services based on identity
- Allows us to connect the various parts of our application in a zero-trust manner.
- Service sidecar proxies allow us to enfororce network traffic encryption (mTLS) and authentication between all services. 
- The service graph allows us to use intentions to define which services are able to communicate with each other.


---
