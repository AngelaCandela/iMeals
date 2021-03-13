import "../styles/AuthMainContainer.css";
import LoginNav from "./LoginNav";
import LoginForm from "./LoginForm";

export default function LoginContent() {
    return (
        <section className="auth-main-container">
            <LoginNav />
            <LoginForm />
        </section>
    )
}
