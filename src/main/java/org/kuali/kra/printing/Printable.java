/*
 * Copyright 2005-2010 The Kuali Foundation
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
package org.kuali.kra.printing;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.xml.transform.Source;

import org.kuali.kra.bo.KraPersistableBusinessObjectBase;
import org.kuali.kra.util.watermark.Watermarkable;

/**
 * 
 * This interface marks reports, notifications, BOs and Documents as printable
 * in Kuali-Coeus. KC Docs & BOs that will be printed via KC printing services
 * should implement this interface.
 */
public interface Printable extends Serializable {

	/**
	 * 
	 * This method provides a way to get the XSL Transform(s) for the KC
	 * generated XML. This XSLT will create a transformed XML-FO stream that
	 * will be converted to PDF. Note that multiple transforms are possible on
	 * this data.
	 */
    public List<Source> getXSLTemplates();

    public Map<String,Source> getXSLTemplateWithBookmarks();
	/**
	 * 
	 * This method will provide the either reflected or XML-Bean based XML for
	 * input to the Transform into XML-FO.
	 */
	public Map<String, byte[]> renderXML() throws PrintingException;

	/**
	 * 
	 * This method will provide the document object associated with the
	 * printable
	 * 
	 * @return ResearchDocument
	 */
	public KraPersistableBusinessObjectBase getPrintableBusinessObject();
	
	/**
	 * This method will return the PDF attachments specific to the printable.
	 * During printing the attachments will be added as bookmarks to the output.
	 * The Key in the map is used as the name of the bookmark.
	 * @return Map of Attachment pdf bytes with bookmark names.
	 */
	public Map<String, byte[]> getAttachments();
	
	/**
	 * 
	 * This method for checking if watermark is enable or disable...
	 * @return
	 */
	public boolean applyWatermark();
	/**
	 *  
	 * This method for setting the appropriate watermark...
	 * @return
	 */
	public Watermarkable getWatermarkable();
}
