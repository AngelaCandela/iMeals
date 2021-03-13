import AuthSidebar from "./AuthSidebar";
import SignupContent from "./SignupContent";

export default function SignupMainContainer() {

    const className = "auth-sidebar signup-sidebar"

    return (
        <div className="d-flex">
            <AuthSidebar className={className}/>
            <SignupContent />
        </div>
    )
}
