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
package org.kuali.kra.irb.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.kuali.core.service.BusinessObjectService;
import org.kuali.kra.bo.Unit;
import org.kuali.kra.irb.bo.LookupableDevelopmentProposal;
import org.kuali.kra.irb.service.LookupableDevelopmentProposalService;

public class LookupableDevelopmentProposalServiceImpl implements LookupableDevelopmentProposalService {

    private BusinessObjectService businessObjectService;

    /** {@inheritDoc} 
     * 
     * @see org.kuali.kra.irb.service.LookupableDevelopmentProposalService#getLookupableDevelopmentProposal(java.lang.String)
     */
    public LookupableDevelopmentProposal getLookupableDevelopmentProposal(String proposalNumber) {
        LookupableDevelopmentProposal devProposal = null;

        Map<String, String> primaryKeys = new HashMap<String, String>();
        if (StringUtils.isNotEmpty(proposalNumber)) {
            primaryKeys.put("proposalNumber", proposalNumber);
            devProposal = (LookupableDevelopmentProposal)businessObjectService.findByPrimaryKey(LookupableDevelopmentProposal.class, primaryKeys);
        }

        return devProposal;
    }

    public BusinessObjectService getBusinessObjectService() {
        return businessObjectService;
    }

    public void setBusinessObjectService(BusinessObjectService businessObjectService) {
        this.businessObjectService = businessObjectService;
    }

}
