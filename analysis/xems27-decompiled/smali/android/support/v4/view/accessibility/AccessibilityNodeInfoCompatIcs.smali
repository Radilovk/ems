.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAction(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "action"    # I

    .line 45
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 46
    return-void
.end method

.method public static addChild(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "child"    # Landroid/view/View;

    .line 49
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method public static findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 54
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, "result":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static getActions(Ljava/lang/Object;)I
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 59
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v0

    return v0
.end method

.method public static getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 63
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 64
    return-void
.end method

.method public static getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 67
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 68
    return-void
.end method

.method public static getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .line 71
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getChildCount(Ljava/lang/Object;)I
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 75
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    return v0
.end method

.method public static getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 79
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 83
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 87
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 91
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 95
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getWindowId(Ljava/lang/Object;)I
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 99
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v0

    return v0
.end method

.method public static isCheckable(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 103
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public static isChecked(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 107
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v0

    return v0
.end method

.method public static isClickable(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 111
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 115
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static isFocusable(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 119
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    return v0
.end method

.method public static isFocused(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 123
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    return v0
.end method

.method public static isLongClickable(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 127
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    return v0
.end method

.method public static isPassword(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 131
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v0

    return v0
.end method

.method public static isScrollable(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 135
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public static isSelected(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 139
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v0

    return v0
.end method

.method public static obtain()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "source"    # Landroid/view/View;

    .line 37
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 41
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static performAction(Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "action"    # I

    .line 143
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v0

    return v0
.end method

.method public static recycle(Ljava/lang/Object;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 219
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 220
    return-void
.end method

.method public static setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 147
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 148
    return-void
.end method

.method public static setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 151
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 152
    return-void
.end method

.method public static setCheckable(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "checkable"    # Z

    .line 155
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 156
    return-void
.end method

.method public static setChecked(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "checked"    # Z

    .line 159
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 160
    return-void
.end method

.method public static setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "className"    # Ljava/lang/CharSequence;

    .line 163
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method

.method public static setClickable(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "clickable"    # Z

    .line 167
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 168
    return-void
.end method

.method public static setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 171
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public static setEnabled(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "enabled"    # Z

    .line 175
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 176
    return-void
.end method

.method public static setFocusable(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "focusable"    # Z

    .line 179
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 180
    return-void
.end method

.method public static setFocused(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "focused"    # Z

    .line 183
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 184
    return-void
.end method

.method public static setLongClickable(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "longClickable"    # Z

    .line 187
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 188
    return-void
.end method

.method public static setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .line 191
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method

.method public static setParent(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "parent"    # Landroid/view/View;

    .line 195
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 196
    return-void
.end method

.method public static setPassword(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "password"    # Z

    .line 199
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 200
    return-void
.end method

.method public static setScrollable(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "scrollable"    # Z

    .line 203
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 204
    return-void
.end method

.method public static setSelected(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "selected"    # Z

    .line 207
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 208
    return-void
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "source"    # Landroid/view/View;

    .line 211
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 212
    return-void
.end method

.method public static setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 215
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method
