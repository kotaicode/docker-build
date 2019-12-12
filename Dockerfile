FROM docker:stable

RUN apk add --update --no-cache curl jq python py-pip git make bash
# install kustomize
RUN curl -s -L -o kustomize https://github.com/kubernetes-sigs/kustomize/releases/download/v2.0.3/kustomize_2.0.3_linux_amd64
RUN chmod u+x kustomize
RUN mv kustomize /usr/local/bin
# install kubectl
RUN curl -LO -o kubectl https://storage.googleapis.com/kubernetes-release/release/v1.17.0/bin/linux/amd64/kubectl
RUN chmod u+x kubectl
RUN mv kubectl /usr/local/bin
