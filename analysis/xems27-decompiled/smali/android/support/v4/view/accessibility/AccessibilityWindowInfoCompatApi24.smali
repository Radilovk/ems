.class Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi24;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfoCompatApi24.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnchor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 33
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getAnchor()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 29
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
