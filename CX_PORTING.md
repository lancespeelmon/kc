Merge CX 5.2.1.x fixes into 6.0.0.x Notes
=========================================

Needs more attention
--------------------
* `986403f` Manually applied patch from KC511 branch.
  * `src/main/java/com/rsmart/kuali/kra/reporting/web/struts/action/ReportForwardAction.java`
    * Where should this be placed?
  * `src/main/java/com/rsmart/kuali/kra/reporting/web/struts/form/ReportFormwardForm.java`
    * Where should this be placed?
  * `src/main/java/com/rsmart/kuali/kra/workflow/UnitAdministratorRoleAttribute.java`
    * Where should this be placed?
  * `src/main/java/org/kuali/kra/service/impl/DocHandlerUrlPrefixPublishingServiceImpl.java`
    * Has gone missing, how to handle?

Complete
--------

* `986403f` Manually applied patch from KC511 branch.
  * `src/main/java/org/kuali/kra/web/filter/PerformanceLoggingFilter.java`
    * Mostly abandoned change; removed bogus memory calculation.
  * `src/main/resources/ApplicationResources.properties`
    * Merged.
* `787cab6` Import svn:ignore from upstream trunk.
* `9ea9f23` Removed unit tests as they only work under very controlled conditions AFAIK.
  * Unnecessary - not merged.
* `cb38ce9` Manually merged rSmart pom.xml changes
