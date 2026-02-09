# external-secrets

![Version: 0.20.5](https://img.shields.io/badge/Version-0.20.5-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.20.4](https://img.shields.io/badge/AppVersion-v0.20.4-informational?style=flat-square)

External secret management for Kubernetes

**Homepage:** <https://github.com/giantswarm/external-secrets>

## Requirements

Kubernetes: `>= 1.30.0-0`

| Repository | Name | Version |
|------------|------|---------|
| oci://ghcr.io/external-secrets/charts | bitwarden-sdk-server | v0.4.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| giantswarm | object | `{"crds":{"install":true,"podName":"kubectl","resources":{"limits":{"cpu":"500m","memory":"512Mi"},"requests":{"cpu":"250m","memory":"256Mi"}}},"images":{"certController":{"image":"giantswarm/external-secrets","tag":""},"externalSecrets":{"image":"giantswarm/external-secrets","tag":""},"pullPolicy":"IfNotPresent","registry":"gsoci.azurecr.io","webhook":{"image":"giantswarm/external-secrets","tag":""}},"policyExceptionNamespace":"","resources":{"certController":{"limits":{"cpu":"100m","memory":"512Mi"},"requests":{"cpu":"100m","memory":"256Mi"}},"externalSecrets":{"limits":{"cpu":"100m","memory":"512Mi"},"requests":{"cpu":"100m","memory":"256Mi"}},"webhook":{"limits":{"cpu":"100m","memory":"512Mi"},"requests":{"cpu":"100m","memory":"256Mi"}}},"securityContext":{"certController":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":1000,"seccompProfile":{"type":"RuntimeDefault"}},"externalSecrets":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":1000,"seccompProfile":{"type":"RuntimeDefault"}},"webhook":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":1000,"seccompProfile":{"type":"RuntimeDefault"}}},"verticalPodAutoscaler":{"enabled":true,"force":false}}` | Giant Swarm specific configuration. |
| giantswarm.images | object | `{"certController":{"image":"giantswarm/external-secrets","tag":""},"externalSecrets":{"image":"giantswarm/external-secrets","tag":""},"pullPolicy":"IfNotPresent","registry":"gsoci.azurecr.io","webhook":{"image":"giantswarm/external-secrets","tag":""}}` | Container image configuration. |
| giantswarm.images.registry | string | `"gsoci.azurecr.io"` | Container image registry. |
| giantswarm.images.externalSecrets | object | `{"image":"giantswarm/external-secrets","tag":""}` | External Secrets operator image settings. |
| giantswarm.images.externalSecrets.image | string | `"giantswarm/external-secrets"` | Image repository for the external-secrets operator. |
| giantswarm.images.externalSecrets.tag | string | `""` | Image tag override; defaults to the chart appVersion. |
| giantswarm.images.certController | object | `{"image":"giantswarm/external-secrets","tag":""}` | Certificate controller image settings. |
| giantswarm.images.certController.image | string | `"giantswarm/external-secrets"` | Image repository for the cert controller. |
| giantswarm.images.certController.tag | string | `""` | Image tag override; defaults to the chart appVersion. |
| giantswarm.images.webhook | object | `{"image":"giantswarm/external-secrets","tag":""}` | Webhook image settings. |
| giantswarm.images.webhook.image | string | `"giantswarm/external-secrets"` | Image repository for the webhook. |
| giantswarm.images.webhook.tag | string | `""` | Image tag override; defaults to the chart appVersion. |
| giantswarm.images.pullPolicy | string | `"IfNotPresent"` | Image pull policy for all containers. |
| giantswarm.verticalPodAutoscaler | object | `{"enabled":true,"force":false}` | Vertical Pod Autoscaler configuration. Allows VPA to be used if it's installed in the cluster. |
| giantswarm.verticalPodAutoscaler.enabled | bool | `true` | Enable Vertical Pod Autoscaler. |
| giantswarm.verticalPodAutoscaler.force | bool | `false` | Enables bypassing "autoscaling.k8s.io/v1" check; use with care. |
| giantswarm.resources | object | `{"certController":{"limits":{"cpu":"100m","memory":"512Mi"},"requests":{"cpu":"100m","memory":"256Mi"}},"externalSecrets":{"limits":{"cpu":"100m","memory":"512Mi"},"requests":{"cpu":"100m","memory":"256Mi"}},"webhook":{"limits":{"cpu":"100m","memory":"512Mi"},"requests":{"cpu":"100m","memory":"256Mi"}}}` | Resource requests and limits for Giant Swarm managed containers. |
| giantswarm.resources.externalSecrets | object | `{"limits":{"cpu":"100m","memory":"512Mi"},"requests":{"cpu":"100m","memory":"256Mi"}}` | Resource requests and limits for the external-secrets operator. |
| giantswarm.resources.certController | object | `{"limits":{"cpu":"100m","memory":"512Mi"},"requests":{"cpu":"100m","memory":"256Mi"}}` | Resource requests and limits for the cert controller. |
| giantswarm.resources.webhook | object | `{"limits":{"cpu":"100m","memory":"512Mi"},"requests":{"cpu":"100m","memory":"256Mi"}}` | Resource requests and limits for the webhook. |
| giantswarm.securityContext | object | `{"certController":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":1000,"seccompProfile":{"type":"RuntimeDefault"}},"externalSecrets":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":1000,"seccompProfile":{"type":"RuntimeDefault"}},"webhook":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":1000,"seccompProfile":{"type":"RuntimeDefault"}}}` | Security context overrides for Giant Swarm managed containers. |
| giantswarm.securityContext.externalSecrets | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":1000,"seccompProfile":{"type":"RuntimeDefault"}}` | Security context for the external-secrets operator container. |
| giantswarm.securityContext.certController | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":1000,"seccompProfile":{"type":"RuntimeDefault"}}` | Security context for the cert controller container. |
| giantswarm.securityContext.webhook | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":1000,"seccompProfile":{"type":"RuntimeDefault"}}` | Security context for the webhook container. |
| giantswarm.crds | object | `{"install":true,"podName":"kubectl","resources":{"limits":{"cpu":"500m","memory":"512Mi"},"requests":{"cpu":"250m","memory":"256Mi"}}}` | CRD installation configuration for Giant Swarm. |
| giantswarm.crds.install | bool | `true` | Whether to install CRDs via a pre-install job. |
| giantswarm.crds.podName | string | `"kubectl"` | Name of the pod used for CRD installation. |
| giantswarm.crds.resources | object | `{"limits":{"cpu":"500m","memory":"512Mi"},"requests":{"cpu":"250m","memory":"256Mi"}}` | Resource requests and limits for the CRD installation job. |
| giantswarm.policyExceptionNamespace | string | `""` | Namespace for policy exceptions. |
| global | object | `{"affinity":{},"compatibility":{"openshift":{"adaptSecurityContext":"auto"}},"nodeSelector":{},"tolerations":[],"topologySpreadConstraints":[]}` | Global values shared across all sub-charts. |
| global.nodeSelector | object | `{}` | Node selector for all pods. |
| global.tolerations | list | `[]` | Tolerations for all pods. |
| global.topologySpreadConstraints | list | `[]` | Topology spread constraints for all pods. |
| global.affinity | object | `{}` | Affinity rules for all pods. |
| global.compatibility | object | `{"openshift":{"adaptSecurityContext":"auto"}}` | Compatibility settings. |
| global.compatibility.openshift | object | `{"adaptSecurityContext":"auto"}` | OpenShift compatibility settings. |
| global.compatibility.openshift.adaptSecurityContext | string | `"auto"` | Manages the securityContext properties to make them compatible with OpenShift. Possible values: auto - Apply configurations if it is detected that OpenShift is the target platform. force - Always apply configurations. disabled - No modification applied. |
| replicaCount | int | `1` | Number of replicas for the external-secrets operator deployment. |
| bitwarden-sdk-server | object | `{"enabled":false,"namespaceOverride":""}` | Bitwarden SDK server sub-chart configuration. |
| bitwarden-sdk-server.enabled | bool | `false` | Enable the Bitwarden SDK server sub-chart. |
| bitwarden-sdk-server.namespaceOverride | string | `""` | Override the namespace for the Bitwarden SDK server. |
| image | object | `{"flavour":"","pullPolicy":"","repository":"","tag":""}` | Container image configuration for the operator. |
| image.repository | string | `""` | Image repository for the operator. |
| image.tag | string | `""` | Image tag for the operator. |
| image.pullPolicy | string | `""` | Image pull policy for the operator. |
| image.flavour | string | `""` | Image flavor for the operator. |
| revisionHistoryLimit | int | `10` | Specifies the amount of historic ReplicaSets k8s should keep (see https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#clean-up-policy) |
| crds | object | `{"annotations":{},"conversion":{"enabled":false},"createClusterExternalSecret":true,"createClusterGenerator":true,"createClusterPushSecret":true,"createClusterSecretStore":true,"createPushSecret":true}` | CRD creation configuration. |
| crds.createClusterExternalSecret | bool | `true` | If true, create CRDs for Cluster External Secret. |
| crds.createClusterSecretStore | bool | `true` | If true, create CRDs for Cluster Secret Store. |
| crds.createClusterGenerator | bool | `true` | If true, create CRDs for Cluster Generator. |
| crds.createClusterPushSecret | bool | `true` | If true, create CRDs for Cluster Push Secret. |
| crds.createPushSecret | bool | `true` | If true, create CRDs for Push Secret. |
| crds.annotations | object | `{}` | Annotations to add to CRDs. |
| crds.conversion | object | `{"enabled":false}` | CRD conversion webhook settings. |
| crds.conversion.enabled | bool | `false` | Conversion is disabled by default as we stopped supporting v1alpha1. |
| imagePullSecrets | list | `[]` | Docker registry secrets for pulling images. |
| nameOverride | string | `""` | Override the name of the chart. |
| fullnameOverride | string | `""` | Override the full name of the chart. |
| namespaceOverride | string | `""` | Override the namespace for the chart. |
| commonLabels | object | `{}` | Additional labels added to all helm chart resources. |
| leaderElect | bool | `false` | If true, external-secrets will perform leader election between instances to ensure no more than one instance of external-secrets operates at a time. |
| controllerClass | string | `""` | If set external secrets will filter matching Secret Stores with the appropriate controller values. |
| extendedMetricLabels | bool | `false` | If true external secrets will use recommended kubernetes annotations as prometheus metric labels. |
| scopedNamespace | string | `""` | If set external secrets are only reconciled in the provided namespace |
| scopedRBAC | bool | `false` | Must be used with scopedNamespace. If true, create scoped RBAC roles under the scoped namespace and implicitly disable cluster stores and cluster external secrets |
| openshiftFinalizers | bool | `true` | If true the OpenShift finalizer permissions will be added to RBAC |
| systemAuthDelegator | bool | `false` | If true the system:auth-delegator ClusterRole will be added to RBAC |
| processClusterExternalSecret | bool | `true` | if true, the operator will process cluster external secret. Else, it will ignore them. When enabled, this adds update/patch permissions on namespaces to handle finalizers for proper cleanup during namespace deletion, preventing race conditions with ExternalSecrets. |
| processClusterPushSecret | bool | `true` | if true, the operator will process cluster push secret. Else, it will ignore them. |
| processClusterStore | bool | `true` | if true, the operator will process cluster store. Else, it will ignore them. |
| processClusterGenerator | bool | `true` | if true, the operator will process cluster generator. Else, it will ignore them. |
| processPushSecret | bool | `true` | if true, the operator will process push secret. Else, it will ignore them. |
| createOperator | bool | `true` | Specifies whether an external secret operator deployment be created. |
| enableHTTP2 | bool | `false` | if true, HTTP2 will be enabled for the services created by all controllers, curently metrics and webhook. |
| concurrent | int | `1` | Specifies the number of concurrent ExternalSecret Reconciles external-secret executes at a time. |
| log | object | `{"level":"info","timeEncoding":"epoch"}` | Specifies Log Params to the External Secrets Operator |
| log.level | string | `"info"` | Log level for the operator. |
| log.timeEncoding | string | `"epoch"` | Log time encoding format. |
| service | object | `{"ipFamilies":[],"ipFamilyPolicy":""}` | Kubernetes Service configuration for the operator. |
| service.ipFamilyPolicy | string | `""` | Set the ip family policy to configure dual-stack see [Configure dual-stack](https://kubernetes.io/docs/concepts/services-networking/dual-stack/#services) |
| service.ipFamilies | list | `[]` | Sets the families that should be supported and the order in which they should be applied to ClusterIP as well. Can be IPv4 and/or IPv6. |
| serviceAccount | object | `{"annotations":{},"automount":true,"create":true,"extraLabels":{},"name":""}` | Service account configuration for the operator. |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created. |
| serviceAccount.automount | bool | `true` | Automounts the service account token in all containers of the pod |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account. |
| serviceAccount.extraLabels | object | `{}` | Extra Labels to add to the service account. |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| rbac | object | `{"aggregateToEdit":true,"aggregateToView":true,"create":true,"servicebindings":{"create":true}}` | RBAC configuration for the operator. |
| rbac.create | bool | `true` | Specifies whether role and rolebinding resources should be created. |
| rbac.servicebindings | object | `{"create":true}` | Service bindings RBAC settings. |
| rbac.servicebindings.create | bool | `true` | Specifies whether a clusterrole to give servicebindings read access should be created. |
| rbac.aggregateToView | bool | `true` | Specifies whether permissions are aggregated to the view ClusterRole |
| rbac.aggregateToEdit | bool | `true` | Specifies whether permissions are aggregated to the edit ClusterRole |
| extraEnv | list | `[]` | Extra environment variables to add to container. |
| extraArgs | object | `{}` | Map of extra arguments to pass to container. |
| extraVolumes | list | `[]` | Extra volumes to pass to pod. |
| extraObjects | list | `[]` | Extra Kubernetes objects to deploy with the helm chart |
| extraVolumeMounts | list | `[]` | Extra volumes to mount to the container. |
| extraInitContainers | list | `[]` | Extra init containers to add to the pod. |
| extraContainers | list | `[]` | Extra containers to add to the pod. |
| deploymentAnnotations | object | `{}` | Annotations to add to Deployment |
| strategy | object | `{}` | Set deployment strategy |
| podAnnotations | object | `{}` | Annotations to add to Pod |
| podLabels | object | `{}` | Extra labels to add to Pod. |
| podSecurityContext | object | `{"enabled":true}` | Pod-level security context for the operator. |
| podSecurityContext.enabled | bool | `true` | Enable pod security context. |
| resources | object | `{}` | Resource requests and limits for the operator container. |
| serviceMonitor | object | `{"additionalLabels":{},"enabled":false,"honorLabels":false,"interval":"30s","metricRelabelings":[],"namespace":"","relabelings":[],"renderMode":"skipIfMissing","scrapeTimeout":"25s"}` | ServiceMonitor configuration for Prometheus metrics collection. |
| serviceMonitor.enabled | bool | `false` | Specifies whether to create a ServiceMonitor resource for collecting Prometheus metrics |
| serviceMonitor.renderMode | string | `"skipIfMissing"` | How should we react to missing CRD "`monitoring.coreos.com/v1/ServiceMonitor`"  Possible values: - `skipIfMissing`: Only render ServiceMonitor resources if CRD is present, skip if missing. - `failIfMissing`: Fail Helm install if CRD is not present. - `alwaysRender` : Always render ServiceMonitor resources, do not check for CRD. |
| serviceMonitor.namespace | string | `""` | namespace where you want to install ServiceMonitors |
| serviceMonitor.additionalLabels | object | `{}` | Additional labels |
| serviceMonitor.interval | string | `"30s"` | Interval to scrape metrics |
| serviceMonitor.scrapeTimeout | string | `"25s"` | Timeout if metrics can't be retrieved in given time interval |
| serviceMonitor.honorLabels | bool | `false` | Let prometheus add an exported_ prefix to conflicting labels |
| serviceMonitor.metricRelabelings | list | `[]` | Metric relabel configs to apply to samples before ingestion. [Metric Relabeling](https://prometheus.io/docs/prometheus/latest/configuration/configuration/#metric_relabel_configs) |
| serviceMonitor.relabelings | list | `[]` | Relabel configs to apply to samples before ingestion. [Relabeling](https://prometheus.io/docs/prometheus/latest/configuration/configuration/#relabel_config) |
| metrics | object | `{"listen":{"port":8080,"secure":{"certDir":"/etc/tls","certFile":"/etc/tls/tls.crt","enabled":false,"keyFile":"/etc/tls/tls.key"}},"service":{"annotations":{},"enabled":false,"port":8080}}` | Metrics endpoint configuration. |
| metrics.listen | object | `{"port":8080,"secure":{"certDir":"/etc/tls","certFile":"/etc/tls/tls.crt","enabled":false,"keyFile":"/etc/tls/tls.key"}}` | Metrics listener configuration. |
| metrics.listen.port | int | `8080` | Port for the metrics endpoint. |
| metrics.listen.secure | object | `{"certDir":"/etc/tls","certFile":"/etc/tls/tls.crt","enabled":false,"keyFile":"/etc/tls/tls.key"}` | Secure metrics endpoint configuration. |
| metrics.listen.secure.enabled | bool | `false` | Enable TLS for the metrics endpoint. |
| metrics.listen.secure.certDir | string | `"/etc/tls"` | TLS cert directory path |
| metrics.listen.secure.certFile | string | `"/etc/tls/tls.crt"` | TLS cert file path |
| metrics.listen.secure.keyFile | string | `"/etc/tls/tls.key"` | TLS key file path |
| metrics.service | object | `{"annotations":{},"enabled":false,"port":8080}` | Metrics Kubernetes Service configuration. |
| metrics.service.enabled | bool | `false` | Enable if you use another monitoring tool than Prometheus to scrape the metrics |
| metrics.service.port | int | `8080` | Metrics service port to scrape |
| metrics.service.annotations | object | `{}` | Additional service annotations |
| grafanaDashboard | object | `{"annotations":{},"enabled":false,"extraLabels":{},"sidecarLabel":"grafana_dashboard","sidecarLabelValue":"1"}` | Grafana dashboard configuration. |
| grafanaDashboard.enabled | bool | `false` | If true creates a Grafana dashboard. |
| grafanaDashboard.sidecarLabel | string | `"grafana_dashboard"` | Label that ConfigMaps should have to be loaded as dashboards. |
| grafanaDashboard.sidecarLabelValue | string | `"1"` | Label value that ConfigMaps should have to be loaded as dashboards. |
| grafanaDashboard.annotations | object | `{}` | Annotations that ConfigMaps can have to get configured in Grafana, See: sidecar.dashboards.folderAnnotation for specifying the dashboard folder. https://github.com/grafana/helm-charts/tree/main/charts/grafana |
| grafanaDashboard.extraLabels | object | `{}` | Extra labels to add to the Grafana dashboard ConfigMap. |
| livenessProbe | object | `{"enabled":false,"spec":{"address":"","failureThreshold":5,"httpGet":{"path":"/healthz","port":8082},"initialDelaySeconds":10,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":5}}` | Liveness probe configuration for the operator. |
| livenessProbe.enabled | bool | `false` | Enabled determines if the liveness probe should be used or not. By default it's disabled. |
| livenessProbe.spec | object | `{"address":"","failureThreshold":5,"httpGet":{"path":"/healthz","port":8082},"initialDelaySeconds":10,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":5}` | The body of the liveness probe settings. |
| livenessProbe.spec.address | string | `""` | Address for liveness probe. |
| livenessProbe.spec.timeoutSeconds | int | `5` | Specify the maximum amount of time to wait for a probe to respond before considering it fails. |
| livenessProbe.spec.failureThreshold | int | `5` | Number of consecutive probe failures that should occur before considering the probe as failed. |
| livenessProbe.spec.periodSeconds | int | `10` | Period in seconds for K8s to start performing probes. |
| livenessProbe.spec.successThreshold | int | `1` | Number of successful probes to mark probe successful. |
| livenessProbe.spec.initialDelaySeconds | int | `10` | Delay in seconds for the container to start before performing the initial probe. |
| livenessProbe.spec.httpGet | object | `{"path":"/healthz","port":8082}` | Handler for liveness probe. |
| livenessProbe.spec.httpGet.port | int | `8082` | Set this value to 8082 to active liveness probes. |
| livenessProbe.spec.httpGet.path | string | `"/healthz"` | Path for liveness probe. |
| nodeSelector | object | `{}` | Node selector for the operator pod. |
| tolerations | list | `[]` | Tolerations for the operator pod. |
| topologySpreadConstraints | list | `[]` | Topology spread constraints for the operator pod. |
| affinity | object | `{}` | Affinity rules for the operator pod. |
| priorityClassName | string | `""` | Pod priority class name. |
| podDisruptionBudget | object | `{"enabled":false,"minAvailable":1,"nameOverride":""}` | Pod disruption budget - for more details see https://kubernetes.io/docs/concepts/workloads/pods/disruptions/ |
| podDisruptionBudget.enabled | bool | `false` | Enable pod disruption budget. |
| podDisruptionBudget.minAvailable | int | `1` | Minimum number of pods that must be available. |
| podDisruptionBudget.nameOverride | string | `""` | Override the name of the PDB resource. |
| hostNetwork | bool | `false` | Run the controller on the host network |
| webhook | object | `{"affinity":{},"annotations":{},"certCheckInterval":"5m","certDir":"/tmp/certs","certManager":{"addInjectorAnnotations":true,"cert":{"annotations":{},"create":true,"duration":"8760h","issuerRef":{"group":"cert-manager.io","kind":"Issuer","name":"my-issuer"},"renewBefore":"","revisionHistoryLimit":0},"enabled":false},"create":true,"deploymentAnnotations":{},"extraArgs":{},"extraEnv":[],"extraInitContainers":[],"extraVolumeMounts":[],"extraVolumes":[],"failurePolicy":"Fail","hostNetwork":false,"image":{"flavour":"","pullPolicy":"","repository":"","tag":""},"imagePullSecrets":[],"log":{"level":"info","timeEncoding":"epoch"},"lookaheadInterval":"","metrics":{"listen":{"port":8080},"service":{"annotations":{},"enabled":false,"port":8080}},"nodeSelector":{},"podAnnotations":{},"podDisruptionBudget":{"enabled":false,"minAvailable":1,"nameOverride":""},"podLabels":{},"podSecurityContext":{"enabled":true},"port":10250,"priorityClassName":"","readinessProbe":{"address":"","port":8081},"replicaCount":1,"resources":{},"revisionHistoryLimit":10,"secretAnnotations":{},"service":{"annotations":{},"enabled":true,"labels":{},"loadBalancerIP":"","type":"ClusterIP"},"serviceAccount":{"annotations":{},"automount":true,"create":true,"extraLabels":{},"name":""},"strategy":{},"tolerations":[],"topologySpreadConstraints":[]}` | Webhook configuration. |
| webhook.image | object | `{"flavour":"","pullPolicy":"","repository":"","tag":""}` | Container image configuration for the webhook. |
| webhook.image.repository | string | `""` | Image repository for the webhook. |
| webhook.image.tag | string | `""` | Image tag for the webhook. |
| webhook.image.pullPolicy | string | `""` | Image pull policy for the webhook. |
| webhook.image.flavour | string | `""` | Image flavor for the webhook. |
| webhook.annotations | object | `{}` | Annotations to place on validating webhook configuration. |
| webhook.create | bool | `true` | Specifies whether a webhook deployment be created. If set to false, crds.conversion.enabled should also be set to false otherwise the kubeapi will be hammered because the conversion is looking for a webhook endpoint. |
| webhook.certCheckInterval | string | `"5m"` | Specifies the time to check if the cert is valid |
| webhook.lookaheadInterval | string | `""` | Specifies the lookaheadInterval for certificate validity |
| webhook.replicaCount | int | `1` | Number of replicas for the webhook deployment. |
| webhook.log | object | `{"level":"info","timeEncoding":"epoch"}` | Specifies Log Params to the Webhook |
| webhook.log.level | string | `"info"` | Log level for the webhook. |
| webhook.log.timeEncoding | string | `"epoch"` | Log time encoding format. |
| webhook.revisionHistoryLimit | int | `10` | Specifies the amount of historic ReplicaSets k8s should keep (see https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#clean-up-policy) |
| webhook.certDir | string | `"/tmp/certs"` | Directory for TLS certificates. |
| webhook.failurePolicy | string | `"Fail"` | Specifies whether validating webhooks should be created with failurePolicy: Fail or Ignore |
| webhook.hostNetwork | bool | `false` | Specifies if webhook pod should use hostNetwork or not. |
| webhook.imagePullSecrets | list | `[]` | Docker registry secrets for pulling webhook images. |
| webhook.port | int | `10250` | The port the webhook will listen to |
| webhook.serviceAccount | object | `{"annotations":{},"automount":true,"create":true,"extraLabels":{},"name":""}` | Service account configuration for the webhook. |
| webhook.serviceAccount.create | bool | `true` | Specifies whether a service account should be created. |
| webhook.serviceAccount.automount | bool | `true` | Automounts the service account token in all containers of the pod |
| webhook.serviceAccount.annotations | object | `{}` | Annotations to add to the service account. |
| webhook.serviceAccount.extraLabels | object | `{}` | Extra Labels to add to the service account. |
| webhook.serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| webhook.nodeSelector | object | `{}` | Node selector for the webhook pod. |
| webhook.certManager | object | `{"addInjectorAnnotations":true,"cert":{"annotations":{},"create":true,"duration":"8760h","issuerRef":{"group":"cert-manager.io","kind":"Issuer","name":"my-issuer"},"renewBefore":"","revisionHistoryLimit":0},"enabled":false}` | Cert-manager integration for webhook TLS certificates. |
| webhook.certManager.enabled | bool | `false` | Enabling cert-manager support will disable the built in secret and switch to using cert-manager (installed separately) to automatically issue and renew the webhook certificate. This chart does not install cert-manager for you, See https://cert-manager.io/docs/ |
| webhook.certManager.addInjectorAnnotations | bool | `true` | Automatically add the cert-manager.io/inject-ca-from annotation to the webhooks and CRDs. As long as you have the cert-manager CA Injector enabled, this will automatically setup your webhook's CA to the one used by cert-manager. See https://cert-manager.io/docs/concepts/ca-injector |
| webhook.certManager.cert | object | `{"annotations":{},"create":true,"duration":"8760h","issuerRef":{"group":"cert-manager.io","kind":"Issuer","name":"my-issuer"},"renewBefore":"","revisionHistoryLimit":0}` | Certificate resource configuration. |
| webhook.certManager.cert.create | bool | `true` | Create a certificate resource within this chart. See https://cert-manager.io/docs/usage/certificate/ |
| webhook.certManager.cert.issuerRef | object | `{"group":"cert-manager.io","kind":"Issuer","name":"my-issuer"}` | For the Certificate created by this chart, setup the issuer. See https://cert-manager.io/docs/reference/api-docs/#cert-manager.io/v1.IssuerSpec |
| webhook.certManager.cert.issuerRef.group | string | `"cert-manager.io"` | Issuer API group. |
| webhook.certManager.cert.issuerRef.kind | string | `"Issuer"` | Kind of the issuer (Issuer or ClusterIssuer). |
| webhook.certManager.cert.issuerRef.name | string | `"my-issuer"` | Name of the issuer to use. |
| webhook.certManager.cert.duration | string | `"8760h"` | Set the requested duration (i.e. lifetime) of the Certificate. See https://cert-manager.io/docs/reference/api-docs/#cert-manager.io/v1.CertificateSpec One year by default. |
| webhook.certManager.cert.revisionHistoryLimit | int | `0` | Set the revisionHistoryLimit on the Certificate. See https://cert-manager.io/docs/reference/api-docs/#cert-manager.io/v1.CertificateSpec Defaults to 0 (ignored). |
| webhook.certManager.cert.renewBefore | string | `""` | How long before the currently issued certificate's expiry cert-manager should renew the certificate. See https://cert-manager.io/docs/reference/api-docs/#cert-manager.io/v1.CertificateSpec Note that renewBefore should be greater than .webhook.lookaheadInterval since the webhook will check this far in advance that the certificate is valid. |
| webhook.certManager.cert.annotations | object | `{}` | Add extra annotations to the Certificate resource. |
| webhook.tolerations | list | `[]` | Tolerations for the webhook pod. |
| webhook.topologySpreadConstraints | list | `[]` | Topology spread constraints for the webhook pod. |
| webhook.affinity | object | `{}` | Affinity rules for the webhook pod. |
| webhook.strategy | object | `{}` | Set deployment strategy |
| webhook.priorityClassName | string | `""` | Pod priority class name. |
| webhook.podDisruptionBudget | object | `{"enabled":false,"minAvailable":1,"nameOverride":""}` | Pod disruption budget - for more details see https://kubernetes.io/docs/concepts/workloads/pods/disruptions/ |
| webhook.podDisruptionBudget.enabled | bool | `false` | Enable pod disruption budget for the webhook. |
| webhook.podDisruptionBudget.minAvailable | int | `1` | Minimum number of pods that must be available. |
| webhook.podDisruptionBudget.nameOverride | string | `""` | Override the name of the PDB resource. |
| webhook.metrics | object | `{"listen":{"port":8080},"service":{"annotations":{},"enabled":false,"port":8080}}` | Metrics configuration for the webhook. |
| webhook.metrics.listen | object | `{"port":8080}` | Metrics listener configuration. |
| webhook.metrics.listen.port | int | `8080` | Port for the metrics endpoint. |
| webhook.metrics.service | object | `{"annotations":{},"enabled":false,"port":8080}` | Metrics Kubernetes Service configuration. |
| webhook.metrics.service.enabled | bool | `false` | Enable if you use another monitoring tool than Prometheus to scrape the metrics |
| webhook.metrics.service.port | int | `8080` | Metrics service port to scrape |
| webhook.metrics.service.annotations | object | `{}` | Additional service annotations |
| webhook.readinessProbe | object | `{"address":"","port":8081}` | Readiness probe configuration for the webhook. |
| webhook.readinessProbe.address | string | `""` | Address for readiness probe |
| webhook.readinessProbe.port | int | `8081` | ReadinessProbe port for kubelet |
| webhook.extraEnv | list | `[]` | Extra environment variables to add to container. |
| webhook.extraArgs | object | `{}` | Map of extra arguments to pass to container. |
| webhook.extraInitContainers | list | `[]` | Extra init containers to add to the pod. |
| webhook.extraVolumes | list | `[]` | Extra volumes to pass to pod. |
| webhook.extraVolumeMounts | list | `[]` | Extra volumes to mount to the container. |
| webhook.secretAnnotations | object | `{}` | Annotations to add to Secret |
| webhook.deploymentAnnotations | object | `{}` | Annotations to add to Deployment |
| webhook.podAnnotations | object | `{}` | Annotations to add to Pod |
| webhook.podLabels | object | `{}` | Extra labels to add to the webhook pod. |
| webhook.podSecurityContext | object | `{"enabled":true}` | Pod-level security context for the webhook. |
| webhook.podSecurityContext.enabled | bool | `true` | Enable pod security context. |
| webhook.resources | object | `{}` | Resource requests and limits for the webhook container. |
| webhook.service | object | `{"annotations":{},"enabled":true,"labels":{},"loadBalancerIP":"","type":"ClusterIP"}` | Manage the service through which the webhook is reached. |
| webhook.service.enabled | bool | `true` | Whether the service object should be enabled or not (it is expected to exist). |
| webhook.service.annotations | object | `{}` | Custom annotations for the webhook service. |
| webhook.service.labels | object | `{}` | Custom labels for the webhook service. |
| webhook.service.type | string | `"ClusterIP"` | The service type of the webhook service. |
| webhook.service.loadBalancerIP | string | `""` | If the webhook service type is LoadBalancer, you can assign a specific load balancer IP here. Check the documentation of your load balancer provider to see if/how this should be used. |
| certController | object | `{"affinity":{},"create":true,"deploymentAnnotations":{},"extraArgs":{},"extraEnv":[],"extraInitContainers":[],"extraVolumeMounts":[],"extraVolumes":[],"hostNetwork":false,"image":{"flavour":"","pullPolicy":"","repository":"","tag":""},"imagePullSecrets":[],"log":{"level":"info","timeEncoding":"epoch"},"metrics":{"listen":{"port":8080},"service":{"annotations":{},"enabled":false,"port":8080}},"nodeSelector":{},"podAnnotations":{},"podDisruptionBudget":{"enabled":false,"minAvailable":1,"nameOverride":""},"podLabels":{},"podSecurityContext":{"enabled":true},"priorityClassName":"","rbac":{"create":true},"readinessProbe":{"address":"","port":8081},"replicaCount":1,"requeueInterval":"5m","resources":{},"revisionHistoryLimit":10,"serviceAccount":{"annotations":{},"automount":true,"create":true,"extraLabels":{},"name":""},"startupProbe":{"enabled":false,"port":"","useReadinessProbePort":true},"strategy":{},"tolerations":[],"topologySpreadConstraints":[]}` | Certificate controller configuration. |
| certController.image | object | `{"flavour":"","pullPolicy":"","repository":"","tag":""}` | Container image configuration for the cert controller. |
| certController.image.repository | string | `""` | Image repository for the cert controller. |
| certController.image.tag | string | `""` | Image tag for the cert controller. |
| certController.image.pullPolicy | string | `""` | Image pull policy for the cert controller. |
| certController.image.flavour | string | `""` | Image flavor for the cert controller. |
| certController.create | bool | `true` | Specifies whether a certificate controller deployment be created. |
| certController.requeueInterval | string | `"5m"` | Requeue interval for the cert controller reconciliation loop. |
| certController.replicaCount | int | `1` | Number of replicas for the cert controller deployment. |
| certController.log | object | `{"level":"info","timeEncoding":"epoch"}` | Specifies Log Params to the Certificate Controller |
| certController.log.level | string | `"info"` | Log level for the cert controller. |
| certController.log.timeEncoding | string | `"epoch"` | Log time encoding format. |
| certController.revisionHistoryLimit | int | `10` | Specifies the amount of historic ReplicaSets k8s should keep (see https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#clean-up-policy) |
| certController.imagePullSecrets | list | `[]` | Docker registry secrets for pulling cert controller images. |
| certController.rbac | object | `{"create":true}` | RBAC configuration for the cert controller. |
| certController.rbac.create | bool | `true` | Specifies whether role and rolebinding resources should be created. |
| certController.serviceAccount | object | `{"annotations":{},"automount":true,"create":true,"extraLabels":{},"name":""}` | Service account configuration for the cert controller. |
| certController.serviceAccount.create | bool | `true` | Specifies whether a service account should be created. |
| certController.serviceAccount.automount | bool | `true` | Automounts the service account token in all containers of the pod |
| certController.serviceAccount.annotations | object | `{}` | Annotations to add to the service account. |
| certController.serviceAccount.extraLabels | object | `{}` | Extra Labels to add to the service account. |
| certController.serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| certController.nodeSelector | object | `{}` | Node selector for the cert controller pod. |
| certController.tolerations | list | `[]` | Tolerations for the cert controller pod. |
| certController.topologySpreadConstraints | list | `[]` | Topology spread constraints for the cert controller pod. |
| certController.affinity | object | `{}` | Affinity rules for the cert controller pod. |
| certController.strategy | object | `{}` | Set deployment strategy |
| certController.hostNetwork | bool | `false` | Run the certController on the host network |
| certController.priorityClassName | string | `""` | Pod priority class name. |
| certController.podDisruptionBudget | object | `{"enabled":false,"minAvailable":1,"nameOverride":""}` | Pod disruption budget - for more details see https://kubernetes.io/docs/concepts/workloads/pods/disruptions/ |
| certController.podDisruptionBudget.enabled | bool | `false` | Enable pod disruption budget for the cert controller. |
| certController.podDisruptionBudget.minAvailable | int | `1` | Minimum number of pods that must be available. |
| certController.podDisruptionBudget.nameOverride | string | `""` | Override the name of the PDB resource. |
| certController.metrics | object | `{"listen":{"port":8080},"service":{"annotations":{},"enabled":false,"port":8080}}` | Metrics configuration for the cert controller. |
| certController.metrics.listen | object | `{"port":8080}` | Metrics listener configuration. |
| certController.metrics.listen.port | int | `8080` | Port for the metrics endpoint. |
| certController.metrics.service | object | `{"annotations":{},"enabled":false,"port":8080}` | Metrics Kubernetes Service configuration. |
| certController.metrics.service.enabled | bool | `false` | Enable if you use another monitoring tool than Prometheus to scrape the metrics |
| certController.metrics.service.port | int | `8080` | Metrics service port to scrape |
| certController.metrics.service.annotations | object | `{}` | Additional service annotations |
| certController.readinessProbe | object | `{"address":"","port":8081}` | Readiness probe configuration for the cert controller. |
| certController.readinessProbe.address | string | `""` | Address for readiness probe |
| certController.readinessProbe.port | int | `8081` | ReadinessProbe port for kubelet |
| certController.startupProbe | object | `{"enabled":false,"port":"","useReadinessProbePort":true}` | Startup probe configuration for the cert controller. |
| certController.startupProbe.enabled | bool | `false` | Enabled determines if the startup probe should be used or not. By default it's enabled |
| certController.startupProbe.useReadinessProbePort | bool | `true` | whether to use the readiness probe port for startup probe. |
| certController.startupProbe.port | string | `""` | Port for startup probe. |
| certController.extraEnv | list | `[]` | Extra environment variables to add to container. |
| certController.extraArgs | object | `{}` | Map of extra arguments to pass to container. |
| certController.extraInitContainers | list | `[]` | Extra init containers to add to the pod. |
| certController.extraVolumes | list | `[]` | Extra volumes to pass to pod. |
| certController.extraVolumeMounts | list | `[]` | Extra volumes to mount to the container. |
| certController.deploymentAnnotations | object | `{}` | Annotations to add to Deployment |
| certController.podAnnotations | object | `{}` | Annotations to add to Pod |
| certController.podLabels | object | `{}` | Extra labels to add to the cert controller pod. |
| certController.podSecurityContext | object | `{"enabled":true}` | Pod-level security context for the cert controller. |
| certController.podSecurityContext.enabled | bool | `true` | Enable pod security context. |
| certController.resources | object | `{}` | Resource requests and limits for the cert controller container. |
| dnsPolicy | string | `"ClusterFirst"` | Specifies `dnsPolicy` to deployment |
| dnsConfig | object | `{}` | Specifies `dnsOptions` to deployment |
| podSpecExtra | object | `{}` | Additional pod spec fields to add to the operator pod. |
