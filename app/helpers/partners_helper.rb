module PartnersHelper

  def link_to_backend_user
     if current_user
       %{#{link_to current_user.name, dashboard_path}
         <ul style="overflow: hidden; display: block; height: 0px; z-index: 54; opacity: 0.007936507936507936;">
           <li>#{link_to "mi cuenta", dashboard_path}</li>
           <li>#{link_to "salir", signout_path}</li>
         </ul>}.html_safe
     else
       link_to "socios", login_path , id: "sign_in"
     end
  end

end
