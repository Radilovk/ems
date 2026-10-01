.class final Lcom/isaigu/gymapp/widget/XemsNav$OpenFromInfo;
.super Ljava/lang/Object;
.source "XemsNav.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OpenFromInfo"
.end annotation


# instance fields
.field private final module:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 1328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1329
    iput p1, p0, Lcom/isaigu/gymapp/widget/XemsNav$OpenFromInfo;->module:I

    .line 1330
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1334
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$1200()[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsNav$OpenFromInfo;->module:I

    aget-object v0, v0, v1

    .line 1335
    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    .line 1336
    :goto_c
    if-eqz v0, :cond_13

    .line 1337
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsNav$OpenFromInfo;->module:I

    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->openModule(Landroid/view/View;I)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->access$400(Landroid/view/View;I)V

    .line 1339
    :cond_13
    return-void

    .line 1335
    :cond_14
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$1300()Landroid/view/View;

    move-result-object v0

    goto :goto_c
.end method
