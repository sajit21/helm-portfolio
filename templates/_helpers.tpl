{{/*
Application name
*/}}
{{- define "portfolio.name" -}}
portfolio
{{- end }}

{{/*
Full application name
*/}}
{{- define "portfolio.fullname" -}}
{{ .Release.Name }}-{{ include "portfolio.name" . }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "portfolio.labels" -}}
app.kubernetes.io/name: {{ include "portfolio.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end }}