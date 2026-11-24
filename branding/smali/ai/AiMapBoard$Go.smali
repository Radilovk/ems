.class final Lcom/isaigu/gymapp/ai/AiMapBoard$Go;
.super Ljava/lang/Object;
.source "AiMapBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiMapBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Go"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 282
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 283
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->go()V

    .line 284
    return-void
.end method
