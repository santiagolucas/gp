module ApplicationHelper
    def usuario_atual
        if user_signed_in?
            usuario_atual = current_user.email
        end
    end
end
