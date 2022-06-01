module github.com/RHEcosystemAppEng/dbaas-e2e-test-harness

go 1.17

require (
	github.com/RHEcosystemAppEng/dbaas-operator v0.1.5-0.20220329142537-6708678c607a
	github.com/chromedp/cdproto v0.0.0-20220530001853-c0f376d894d1
	github.com/chromedp/chromedp v0.8.2
	github.com/onsi/ginkgo v1.16.4
	github.com/onsi/ginkgo/v2 v2.1.4
	github.com/onsi/gomega v1.19.0
	github.com/openshift/api v0.0.0-20210910062324-a41d3573a3ba
	k8s.io/api v0.22.1
	k8s.io/apiextensions-apiserver v0.22.1
	k8s.io/apimachinery v0.22.1
	k8s.io/client-go v0.22.1
	sigs.k8s.io/controller-runtime v0.10.0
)
