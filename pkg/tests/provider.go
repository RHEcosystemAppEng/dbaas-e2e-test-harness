package tests

type ProviderAccount struct {
	ProviderName string
	SecretName   string
	SecretData   map[string][]byte
}
