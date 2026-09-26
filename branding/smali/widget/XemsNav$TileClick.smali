.class final Lcom/isaigu/gymapp/widget/XemsNav$TileClick;
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
    name = "TileClick"
.end annotation


# instance fields
.field private final module:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput p1, p0, Lcom/isaigu/gymapp/widget/XemsNav$TileClick;->module:I

    .line 624
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 629
    :try_start_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$TileClick;->module:I

    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->openModule(Landroid/view/View;I)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsNav;->access$800(Landroid/view/View;I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 632
    goto :goto_c

    .line 630
    :catchall_6
    move-exception p1

    .line 631
    const-string v0, "XemsNav.module"

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 633
    :goto_c
    return-void
.end method
