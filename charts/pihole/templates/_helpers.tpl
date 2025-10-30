{{- define "pihole.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "pihole.fullname" -}}
{{- if .Release.Name -}}
{{- printf "%s-%s" .Release.Name (include "pihole.name" .) | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- include "pihole.name" . -}}
{{- end -}}
{{- end -}}

{{- define "pihole.labels" -}}
app.kubernetes.io/name: {{ include "pihole.name" . }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
