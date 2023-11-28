package br.com.tarefa01.portlet;

import br.com.tarefa01.constants.tarefa01PortletKeys;

import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;

import javax.portlet.Portlet;

import org.osgi.service.component.annotations.Component;

import com.liferay.portal.kernel.model.User;
import com.liferay.portal.kernel.service.UserLocalService;
import java.io.IOException;
import java.util.List;

import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import org.osgi.service.component.annotations.Reference;

/**
 * @author vinic
 */
@Component(
    immediate = true,
    property = {
        "com.liferay.portlet.display-category=category.tarefa01",
        "com.liferay.portlet.header-portlet-css=/css/main.css",
        "com.liferay.portlet.instanceable=true",
        "javax.portlet.display-name=tarefa01",
        "javax.portlet.init-param.template-path=/",
        "javax.portlet.init-param.view-template=/view.jsp",
        "javax.portlet.name=" + tarefa01PortletKeys.TAREFA01,
        "javax.portlet.resource-bundle=content.Language",
        "javax.portlet.security-role-ref=power-user,user"
    },
    service = Portlet.class
)
public class tarefa01Portlet extends MVCPortlet {

    @Reference
    private UserLocalService userLocalService;

    @Override
    public void doView(
        RenderRequest renderRequest, RenderResponse renderResponse)
        throws IOException, PortletException {

        List<User> users = userLocalService.getUsers(-1, -1);

        renderRequest.setAttribute("userList", users);

        super.doView(renderRequest, renderResponse);
    }
}