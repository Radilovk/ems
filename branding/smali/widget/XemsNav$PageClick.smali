.class final Lcom/isaigu/gymapp/widget/XemsNav$PageClick;
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
    name = "PageClick"
.end annotation


# instance fields
.field private final id:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    iput p1, p0, Lcom/isaigu/gymapp/widget/XemsNav$PageClick;->id:I

    .line 670
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 675
    :try_start_0
    iget p1, p0, Lcom/isaigu/gymapp/widget/XemsNav$PageClick;->id:I

    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->goPage(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->access$1000(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 678
    goto :goto_c

    .line 676
    :catchall_6
    move-exception p1

    .line 677
    const-string v0, "XemsNav.page"

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 679
    :goto_c
    return-void
.end method
