import "../styles/AuthMainContainer.css";
import SignupNav from "./SignupNav";
import SignupForm from "./SignupForm";

export default function SignupMainContent() {
    return (
        <section className="auth-main-container">
            <SignupNav />
            <SignupForm />
        </section>
    )
}