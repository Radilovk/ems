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
    .line 1277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1278
    iput p1, p0, Lcom/isaigu/gymapp/widget/XemsNav$OpenFromInfo;->module:I

    .line 1279
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1283
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$1000()[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsNav$OpenFromInfo;->module:I

    aget-object v0, v0, v1

    .line 1284
    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    .line 1285
    :goto_c
    if-eqz v0, :cond_13

    .line 1286
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsNav$OpenFromInfo;->module:I

    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->openModule(Landroid/view/View;I)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->access$200(Landroid/view/View;I)V

    .line 1288
    :cond_13
    return-void

    .line 1284
    :cond_14
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$1100()Landroid/view/View;

    move-result-object v0

    goto :goto_c
.end method
