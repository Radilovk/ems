.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatApi22.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTraversalAfter(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 43
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTraversalAfter()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getTraversalBefore(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;

    .line 31
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTraversalBefore()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;

    .line 47
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public static setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 51
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    .line 52
    return-void
.end method

.method public static setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;

    .line 35
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;)V

    .line 36
    return-void
.end method

.method public static setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 39
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 40
    return-void
.end method
