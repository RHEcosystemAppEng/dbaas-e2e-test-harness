package tests

// ProviderAccount stores data related to a provider account
type ProviderAccount struct {
	ProviderName string
	SecretName   string
	SecretData   map[string][]byte
}
