.class final Lcom/isaigu/gymapp/widget/XemsNav$InfoClick;
.super Ljava/lang/Object;
.source "XemsNav.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InfoClick"
.end annotation


# instance fields
.field private final module:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput p1, p0, Lcom/isaigu/gymapp/widget/XemsNav$InfoClick;->module:I

    .line 682
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 687
    :try_start_0
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 688
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$InfoClick;->module:I

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->showInfo(I)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 692
    :goto_8
    return-void

    .line 689
    :catch_9
    move-exception v0

    .line 690
    const-string v1, "XemsNav.info"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method
