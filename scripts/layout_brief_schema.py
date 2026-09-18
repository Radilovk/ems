"""Schema and required @id sets for collaborative layout briefs."""

from __future__ import annotations

SCREENS = {
    "train_user_row": {
        "label": "Train — ред с потребител",
        "target_new": "branding/design/new_user_train_control_item_layout.xml",
        "target_legacy": "branding/design/user_train_control_item_layout.xml",
        "required_ids": (
            "strenthExist", "youyangyundong", "anmo",
            "vpb_brightness1", "vpb_brightness2", "vpb_brightness3", "vpb_brightness4",
            "vpb_brightness5", "vpb_brightness6", "vpb_brightness7", "vpb_brightness8",
            "vpb_brightness9", "vpb_brightness10",
            "circleSeekBar", "ma", "pauseMaValue", "hzValue", "pauseHzValue",
            "userIcon", "wave_ball_progress_value", "name", "time",
            "stop", "startpaulse", "save",
        ),
        "optional_ids": (
            "paulsecontinue", "paulsestop", "setting", "signalImage", "MyBatterView",
        ),
    },
    "login": {
        "label": "Login",
        "target": "branding/layouts/login_fragment_layout.xml",
        "required_ids": ("username", "password", "rememberpassword", "autologin"),
        "optional_ids": ("logoImage", "logoImage1"),
    },
    "add_user_form": {
        "label": "Форма — нов потребител",
        "target": "branding/layouts/add_user_layout.xml",
        "required_ids": ("name", "email", "id", "phone", "userIcon"),
        "optional_ids": ("city", "address", "sex", "height", "weight", "birtyday"),
    },
    "custom": {
        "label": "Нов екран (custom)",
        "target": "branding/layouts/staging/custom_layout.xml",
        "required_ids": (),
        "optional_ids": (),
    },
}

ELEMENT_TYPES = (
    "column",
    "row",
    "button",
    "text",
    "input",
    "badge",
    "slider_bank",
    "avatar_panel",
    "spacer",
    "panel",
)
