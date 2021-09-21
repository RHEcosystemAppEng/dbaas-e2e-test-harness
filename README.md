# dbaas-e2e-test-harness

This is an example test harness meant for testing the DBaaS operator addon. It does the following:

* Tests for the existence of the dbaas.redhat.com CRD's. These should be present if the DBaaS
  operator addon has been installed properly.
* Writes out a junit XML file with tests results to the /test-run-results directory as expected
  by the [https://github.com/openshift/osde2e](osde2e) test framework.
* Writes out an `addon-metadata.json` file which will also be consumed by the osde2e test framework.
