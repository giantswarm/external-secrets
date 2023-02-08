{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "labels.common" -}}
{{ include "labels.selector" . }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
application.giantswarm.io/team: {{ index .Chart.Annotations "application.giantswarm.io/team" | quote }}
helm.sh/chart: {{ include "chart" . | quote }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "labels.selector" -}}
app.kubernetes.io/name: {{ include "name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end -}}

{{- define "crdInstall" -}}
{{- printf "%s-%s" ( include "name" . ) "crd-install" | replace "+" "_" | trimSuffix "-" -}}
{{- end -}}

{{- define "crdInstallJob" -}}
{{- printf "%s-%s-%s" ( include "name" . ) "crd-install" .Chart.AppVersion | replace "+" "_" | replace "." "-" | trimSuffix "-" | trunc 63 -}}
{{- end -}}

{{- define "crdInstallAnnotations" -}}
"helm.sh/hook": "pre-install,pre-upgrade"
"helm.sh/hook-delete-policy": "before-hook-creation,hook-succeeded,hook-failed"
{{- end -}}

{{/* Create a label which can be used to select any orphaned crd-install hook resources */}}
{{- define "crdInstallSelector" -}}
{{- printf "%s" "crd-install-hook" -}}
{{- end -}}

{{/* Usage:
    {{ include "controllerVolumeName" (merge (dict "volumeName" "hello") .) | quote }}
*/}}
{{- define "controllerVolumeName" -}}
{{- printf "%s-controller-%s-volume" (include "name" .) .volumeName -}}
{{- end -}}

{{- define "resource.vpa.enabled" -}}
{{- if and (or (.Capabilities.APIVersions.Has "autoscaling.k8s.io/v1") (.Values.giantswarm.verticalPodAutoscaler.force)) (.Values.giantswarm.verticalPodAutoscaler.enabled) }}true{{ else }}false{{ end }}
{{- end -}}

{{- define "resource.externalSecrets.resources" -}}
requests:
{{ toYaml .Values.giantswarm.resources.externalSecrets.requests | indent 2 -}}
{{ if eq (include "resource.vpa.enabled" .) "false" }}
limits:
{{ toYaml .Values.giantswarm.resources.externalSecrets.limits | indent 2 -}}
{{- end -}}
{{- end -}}

{{- define "resource.certController.resources" -}}
requests:
{{ toYaml .Values.giantswarm.resources.certController.requests | indent 2 -}}
{{ if eq (include "resource.vpa.enabled" .) "false" }}
limits:
{{ toYaml .Values.giantswarm.resources.certController.limits | indent 2 -}}
{{- end -}}
{{- end -}}

{{- define "resource.webhook.resources" -}}
requests:
{{ toYaml .Values.giantswarm.resources.webhook.requests | indent 2 -}}
{{ if eq (include "resource.vpa.enabled" .) "false" }}
limits:
{{ toYaml .Values.giantswarm.resources.webhook.limits | indent 2 -}}
{{- end -}}
{{- end -}}
