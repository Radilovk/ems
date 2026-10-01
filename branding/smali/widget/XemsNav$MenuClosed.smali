.class final Lcom/isaigu/gymapp/widget/XemsNav$MenuClosed;
.super Ljava/lang/Object;
.source "XemsNav.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MenuClosed"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 1323
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/widget/XemsNav;->menuBox:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->access$1302(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 1324
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    # setter for: Lcom/isaigu/gymapp/widget/XemsNav;->menuClosedAt:J
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->access$1402(J)J

    .line 1325
    return-void
.end method
