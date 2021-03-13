import AuthSidebar from "./AuthSidebar";
import LoginContent from "./LoginContent";

export default function LoginMainContainer() {

    const className = "auth-sidebar login-sidebar"
    
    return (
        <div className="d-flex">
            <AuthSidebar className={className}/>
            <LoginContent />
        </div>
    )
}
