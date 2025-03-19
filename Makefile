install-argocd-sikademo:
	helm upgrade --install \
		argocd argo-cd \
		--version 7.8.11 \
		--repo https://argoproj.github.io/argo-helm \
		--create-namespace \
		--namespace argocd \
		--values apps/sikademo/_system/argocd/argocd.values.yaml
		--wait

install-argocd-us:
	helm upgrade --install \
		argocd argo-cd \
		--version 7.8.11 \
		--repo https://argoproj.github.io/argo-helm \
		--create-namespace \
		--namespace argocd \
		--values apps/us/_system/argocd/argocd.values.yaml
		--wait

install-argocd-eu:
	helm upgrade --install \
		argocd argo-cd \
		--version 7.8.11 \
		--repo https://argoproj.github.io/argo-helm \
		--create-namespace \
		--namespace argocd \
		--values apps/eu/_system/argocd/argocd.values.yaml
		--wait
