#!/bin/bash -ex

VER=${5##v}

CHART_PATH=helm/external-secrets
FILE=Chart.yaml
CRD_PATH=$CHART_PATH/crd-base
FILE_PATH=$CHART_PATH/$FILE

# wget https://github.com/external-secrets/external-secrets/releases/download/helm-chart-"${VER}"/external-secrets-"${VER}".tgz -O /tmp/external-secrets.tgz
# tar zvxf /tmp/external-secrets.tgz -C /tmp
cp /tmp/external-secrets/templates/crds/* "$CRD_PATH"

for f in "$CRD_PATH"/cluster*.yaml; do
	echo "Processing cluster CRD $f"
	sed -i '1 s/and (.Values.installCRDs) //' "$f"
done

for f in $(ls -I "cluster*.yaml" "$CRD_PATH"); do
	echo "Processing CRD $f"
	sed -i '1d; $d' "$CRD_PATH/$f"
done

echo "Patching $FILE with upstream versions info"

yq ".appVersion = \"$VER\"" -i "$FILE_PATH"
yq ".upstreamChartVersion = \"$VER\"" -i "$FILE_PATH"
