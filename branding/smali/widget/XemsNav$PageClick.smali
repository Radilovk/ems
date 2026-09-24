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

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput p1, p0, Lcom/isaigu/gymapp/widget/XemsNav$PageClick;->id:I

    .line 617
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 622
    :try_start_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$PageClick;->id:I

    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->goPage(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->access$1000(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 626
    :goto_5
    return-void

    .line 623
    :catch_6
    move-exception v0

    .line 624
    const-string v1, "XemsNav.page"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
