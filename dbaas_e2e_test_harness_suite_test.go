package dbaase2e

import (
	"path/filepath"
	"testing"

	"github.com/RHEcosystemAppEng/dbaas-e2e-test-harness/pkg/metadata"
	. "github.com/onsi/ginkgo/v2"
	. "github.com/onsi/gomega"

	_ "github.com/RHEcosystemAppEng/dbaas-e2e-test-harness/pkg/tests"
)

const (
	testResultsDirectory = "/test-run-results"
	jUnitOutputFilename  = "junit-dbaas-operator.xml"
	addonMetadataName    = "addon-metadata.json"
)

func TestDbaaSOperatorTestHarness(t *testing.T) {
	RegisterFailHandler(Fail)
	//jUnitReporter := reporters.NewJUnitReporter(filepath.Join(testResultsDirectory, jUnitOutputFilename))

	_, reporterConfig := GinkgoConfiguration()
	reporterConfig.FullTrace = true
	reporterConfig.JUnitReport = filepath.Join(testResultsDirectory, jUnitOutputFilename)
	RunSpecs(t, "DBaaS Operator Test Harness", reporterConfig)

	err := metadata.Instance.WriteToJSON(filepath.Join(testResultsDirectory, addonMetadataName))
	if err != nil {
		t.Errorf("error while writing metadata: %v", err)
	}
}
