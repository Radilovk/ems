.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompatIcsMr1.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxScrollX(Ljava/lang/Object;)I
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 30
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollX()I

    move-result v0

    return v0
.end method

.method public static getMaxScrollY(Ljava/lang/Object;)I
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 34
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollY()I

    move-result v0

    return v0
.end method

.method public static setMaxScrollX(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "maxScrollX"    # I

    .line 37
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 38
    return-void
.end method

.method public static setMaxScrollY(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "maxScrollY"    # I

    .line 41
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 42
    return-void
.end method
