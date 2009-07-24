/*
 * Copyright 2008 The Kuali Foundation.
 * 
 * Licensed under the Educational Community License, Version 1.0 (the "License");
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
package org.kuali.kra.s2s.generator.impl;

import gov.grants.apply.forms.edGEPA427V11.GEPA427AttachmentsDocument;
import gov.grants.apply.forms.edGEPA427V11.GEPA427AttachmentsDocument.GEPA427Attachments;

import org.apache.xmlbeans.XmlObject;
import org.kuali.kra.proposaldevelopment.bo.Narrative;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.s2s.util.S2SConstants;

/**
 * 
 * This class is used to generate XML Document object for grants.gov EDGEPA427V1.1. This form is generated using XMLBean API's
 * generated by compiling EDGEPA427V1.1 schema.
 * 
 * @author Kuali Research Administration Team (kualidev@oncourse.iu.edu)
 */
public class EDGEPA427V1_1Generator extends EDGEPA427BaseGenerator {


    /**
     * 
     * This method returns GEPA427AttachmentsDocument object based on proposal development document which contains the
     * GEPA427AttachmentsDocument informations about GEPA type attachment for a particular proposal
     * 
     * @return gepa427Document(GEPA427AttachmentsDocument){@link XmlObject} of type GEPA427AttachmentsDocument.
     */
    private GEPA427AttachmentsDocument getGEPA427Attachments() {

        GEPA427AttachmentsDocument gepa427Document = GEPA427AttachmentsDocument.Factory.newInstance();
        GEPA427Attachments gepAttachments = GEPA427Attachments.Factory.newInstance();
        gepAttachments.setFormVersion(S2SConstants.FORMVERSION_1_1);
        for (Narrative narrative : pdDoc.getDevelopmentProposal().getNarratives()) {
            if (narrative.getNarrativeTypeCode() != null && Integer.parseInt(narrative.getNarrativeTypeCode()) == NARRATIVE_TYPE_ED_GEPA427) {
                gepAttachments.setAttachments(getAttachedFileType(narrative));
            }
        }
        gepa427Document.setGEPA427Attachments(gepAttachments);
        return gepa427Document;
    }

    /**
     * This method creates {@link XmlObject} of type {@link GEPA427AttachmentsDocument} by populating data from the given
     * {@link ProposalDevelopmentDocument}
     * 
     * @param proposalDevelopmentDocument for which the {@link XmlObject} needs to be created
     * @return {@link XmlObject} which is generated using the given {@link ProposalDevelopmentDocument}
     * @see org.kuali.kra.s2s.generator.S2SFormGenerator#getFormObject(ProposalDevelopmentDocument)
     * 
     */
    public XmlObject getFormObject(ProposalDevelopmentDocument proposalDevelopmentDocument) {

        this.pdDoc = proposalDevelopmentDocument;
        return getGEPA427Attachments();
    }

    /**
     * This method typecasts the given {@link XmlObject} to the required generator type and returns back the document of that
     * generator type.
     * 
     * @param xmlObject which needs to be converted to the document type of the required generator
     * @return {@link XmlObject} document of the required generator type
     * @see org.kuali.kra.s2s.generator.S2SFormGenerator#getFormObject(XmlObject)
     */
    public XmlObject getFormObject(XmlObject xmlObject) {

        GEPA427AttachmentsDocument gepa427Document = GEPA427AttachmentsDocument.Factory.newInstance();
        GEPA427Attachments gepAttachments = (GEPA427Attachments) xmlObject;
        gepa427Document.setGEPA427Attachments(gepAttachments);
        return gepa427Document;
    }
}
