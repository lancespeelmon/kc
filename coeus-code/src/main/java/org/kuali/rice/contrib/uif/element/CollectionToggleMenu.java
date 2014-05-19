package org.kuali.rice.contrib.uif.element;

import org.apache.commons.beanutils.PropertyUtils;
import org.kuali.rice.krad.uif.component.BindingInfo;
import org.kuali.rice.krad.uif.component.Component;
import org.kuali.rice.krad.uif.element.Action;
import org.kuali.rice.krad.uif.element.ToggleMenu;
import org.kuali.rice.krad.uif.util.ComponentUtils;
import org.kuali.rice.krad.uif.util.LifecycleElement;
import org.kuali.rice.krad.uif.util.ObjectPropertyUtils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;


public class CollectionToggleMenu extends ToggleMenu {
    private static final org.apache.log4j.Logger LOG = org.apache.log4j.Logger.getLogger(CollectionToggleMenu.class);

    private Class<?> collectionObjectClass;
    private BindingInfo bindingInfo;

    private Action navigationActionPrototype;
    private String actionLabelPropertyName;

    @Override
    public void performInitialization(Object model) {
        super.performInitialization(model);
        this.setMenuItems(new ArrayList<Component>());
    }

    @Override
    public void performApplyModel(Object model, LifecycleElement parent) {
        List<Component> menuItemList = new ArrayList<Component>();
        List<String> actionLabelNames = new ArrayList<String>();
        List<Object> modelCollection = ObjectPropertyUtils.getPropertyValue(model,
                getBindingInfo().getBindingPath());
        for (Object object : modelCollection) {
            String actionLabel = getActionLabel(object);
            if (!actionLabelNames.contains(actionLabel)) {
                Action menuItem =  (Action) ComponentUtils.copy(navigationActionPrototype);
                menuItem.getActionParameters().put("actionLabel",actionLabel);
                menuItem.setActionLabel(actionLabel);
                menuItemList.add(menuItem);
                actionLabelNames.add(actionLabel);
            }
        }

        Collections.sort(menuItemList, new Comparator<Component>(){
            public int compare(Component c1, Component c2) {
                if (c1 instanceof Action && c2 instanceof Action) {
                    return ((Action)c1).getActionLabel().compareTo(((Action)c2).getActionLabel());
                } else {
                    return c1.getTitle().compareTo(c2.getTitle());
                }
            }
        });

        setMenuItems(menuItemList);
        getMenuGroup().setItems(menuItemList);
        super.performApplyModel(model, parent);
    }

    protected String getActionLabel(Object obj) {
        try {
            return PropertyUtils.getNestedProperty(obj,this.getActionLabelPropertyName()).toString();
        } catch(Exception e) {
            LOG.error("Problem creating actionLabel from actionLabelPropertyName",e);
        }
        return null;
    }



    public Class<?> getCollectionObjectClass() {
        return collectionObjectClass;
    }

    public void setCollectionObjectClass(Class<?> collectionObjectClass) {
        this.collectionObjectClass = collectionObjectClass;
    }

    public BindingInfo getBindingInfo() {
        return bindingInfo;
    }

    public void setBindingInfo(BindingInfo bindingInfo) {
        this.bindingInfo = bindingInfo;
    }

    public Action getNavigationActionPrototype() {
        return navigationActionPrototype;
    }

    public void setNavigationActionPrototype(Action navigationActionPrototype) {
        this.navigationActionPrototype = navigationActionPrototype;
    }

    public String getActionLabelPropertyName() {
        return actionLabelPropertyName;
    }

    public void setActionLabelPropertyName(String actionLabelPropertyName) {
        this.actionLabelPropertyName = actionLabelPropertyName;
    }

}
