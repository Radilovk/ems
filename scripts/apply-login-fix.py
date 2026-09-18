#!/usr/bin/env python3
"""Fix stuck loading spinner on login and post-login navigation."""

from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment"

DISPATCH_DISMISS = """    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V
"""

LOGIN_SUCCESS_RUN = """.method public run()V
    .locals 3

    .line 165
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1$2$1;->this$2:Lcom/isaigu/gymapp/fragment/LoginFragment$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/LoginFragment$1$2;->this$1:Lcom/isaigu/gymapp/fragment/LoginFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1$2$1;->val$fragment1:Lcom/isaigu/gymapp/BaseFragment;

    const v2, 0x7f0900a4

    invoke-virtual {v0, v2, v1}, Lcom/isaigu/gymapp/BaseActivity;->replace(ILcom/isaigu/gymapp/BaseFragment;)V

    .line 167
    return-void
.end method"""


def _replace_method(text: str, signature: str, new_body: str) -> str:
    start = text.find(signature)
    if start < 0:
        raise RuntimeError(f"{signature.strip()} not found")
    end = text.find(".end method", start)
    if end < 0:
        raise RuntimeError(f"end method missing for {signature.strip()}")
    return text[:start] + new_body + text[end + len(".end method") :]


def patch_login_success_run() -> None:
    path = FRAGMENT / "LoginFragment$1$2$1.smali"
    text = path.read_text(encoding="utf-8")
    start = text.find(".method public run()V")
    end = text.find(".end method", start)
    block = text[start : end + len(".end method")]
    if "dispatchEventMessage(S)V" in block.split("replace(")[0]:
        print("LoginFragment$1$2$1.run: spinner dismiss already before replace")
        return
    path.write_text(text[:start] + LOGIN_SUCCESS_RUN + text[end + len(".end method") :], encoding="utf-8")
    print("LoginFragment$1$2$1.run: dismiss loading spinner before navigation")


def patch_splash_auto_login_failure() -> None:
    path = FRAGMENT / "SplashFragment$1$1$2$1.smali"
    text = path.read_text(encoding="utf-8")
    marker = """    .line 134
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->this$3:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;->this$2:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/fragment/LoginFragment;"""
    hook = """    .line 134
    const/16 v2, 0x68

    invoke-static {v2}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->this$3:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;->this$2:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/fragment/LoginFragment;"""
    if "SplashFragment$1$1$2$1" in text and marker in text:
        path.write_text(text.replace(marker, hook, 1), encoding="utf-8")
        print("SplashFragment$1$1$2$1.run: dismiss spinner on auto-login failure")
    elif "dispatchEventMessage(S)V" in text.split("LoginFragment;-><init>")[0].split(":cond_2")[1]:
        print("SplashFragment$1$1$2$1.run: failure spinner dismiss already present")
    else:
        print("SplashFragment$1$1$2$1.run: failure marker not found; skipping")


def _inject_on_create_dismiss(path: Path, label: str) -> None:
    text = path.read_text(encoding="utf-8")
    if "onCreateView" not in text:
        return
    on_create = text.split(".method public onCreateView", 1)[1].split(".method ", 1)[0]
    if "dispatchEventMessage(S)V" in on_create.split("invoke-super")[0]:
        print(f"{label}.onCreateView: safety spinner dismiss already present")
        return
    marker = """    .line
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/"""
    idx = text.find(".method public onCreateView")
    super_idx = text.find("invoke-super {p0, p1, p2, p3}", idx)
    if super_idx < 0:
        raise RuntimeError(f"{label}.onCreateView: invoke-super marker not found")
    hook = """    const/16 v1, 0x68

    invoke-static {v1}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    """
    path.write_text(text[:super_idx] + hook + text[super_idx:], encoding="utf-8")
    print(f"{label}.onCreateView: safety dismiss loading spinner at entry")


def patch_post_login_safety_dismiss() -> None:
    _inject_on_create_dismiss(FRAGMENT / "MainFragment.smali", "MainFragment")
    _inject_on_create_dismiss(FRAGMENT / "StartFragment.smali", "StartFragment")


def main() -> None:
    patch_login_success_run()
    patch_splash_auto_login_failure()
    patch_post_login_safety_dismiss()
    print("Login UX fixes applied.")


if __name__ == "__main__":
    main()
