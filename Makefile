install-argocd:
	helm upgrade --install \
		argocd argo-cd \
		--version 7.8.11 \
		--repo https://argoproj.github.io/argo-helm \
		--create-namespace \
		--namespace argocd \
		--values apps/sikademo/_system/argocd/argocd.values.yaml
		--wait
