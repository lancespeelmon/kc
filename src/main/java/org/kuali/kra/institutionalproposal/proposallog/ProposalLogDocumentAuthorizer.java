/*
 * Copyright 2006-2008 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.institutionalproposal.proposallog;

import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.kuali.kra.kim.bo.KcKimAttributes;
import org.kuali.rice.kns.bo.BusinessObject;
import org.kuali.rice.kns.document.Document;
import org.kuali.rice.kns.document.MaintenanceDocument;
import org.kuali.rice.kns.document.authorization.MaintenanceDocumentAuthorizer;
import org.kuali.rice.kns.document.authorization.MaintenanceDocumentAuthorizerBase;

public class ProposalLogDocumentAuthorizer extends MaintenanceDocumentAuthorizerBase implements MaintenanceDocumentAuthorizer {
    
    @Override
    protected void addRoleQualification(
            BusinessObject primaryBusinessObjectOrDocument,
            Map<String, String> attributes) {
        super.addRoleQualification(primaryBusinessObjectOrDocument, attributes);
        MaintenanceDocument maintenanceDocument = (MaintenanceDocument) primaryBusinessObjectOrDocument;
        ProposalLog proposalLog = (ProposalLog) maintenanceDocument.getDocumentBusinessObject();
        if (!StringUtils.isBlank(proposalLog.getLeadUnit()) && proposalLog.isPersisted()) {
            attributes.put(KcKimAttributes.UNIT_NUMBER, proposalLog.getLeadUnit());
        } else {
            attributes.put(KcKimAttributes.UNIT_NUMBER, "*");
        }
        attributes.put("piId", proposalLog.getPiId());
    }
    
}
