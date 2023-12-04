import com.liferay.portal.kernel.exception.PortalException
import com.liferay.portal.kernel.model.User
import com.liferay.portal.kernel.service.UserLocalServiceUtil

try {
    List<User> userList = UserLocalServiceUtil.getUsers(-1, -1)

    userList.each { user ->
        user.setLastName("InsiraNovoSobrenome")
        UserLocalServiceUtil.updateUser(user)
    }

    userList.each { user ->
        println("ID do Usuário: ${user.getUserId()}")
        println("Novo sobrenome: ${user.getLastName()}")
        println("Usuario: ${user.getFullName()}")
        
        println()
    }

    println("Todos os sobrenomes foram trocados com sucesso!")

} catch (PortalException e) {
    println("Erro ao executar o script de trocar sobrenome: ${e.getMessage()}")
}