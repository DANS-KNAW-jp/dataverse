package edu.harvard.iq.dataverse.datasetutility;

import java.net.URISyntaxException;

public class TermsOfUseOrLicenseException extends Exception {
    public TermsOfUseOrLicenseException(String msg){
        super(msg);
    }

    public TermsOfUseOrLicenseException(String msg, URISyntaxException e) {
        super(msg, e);
    }
}
