.class final Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;
.super Ljava/lang/Object;
.source "SuitStandard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/SuitStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pick"
.end annotation


# instance fields
.field final col:Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;

.field final std:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;I)V
    .registers 3

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;->col:Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;

    .line 271
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;->std:I

    .line 272
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;->col:Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->mac:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;->col:Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->mac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->unlocked()Z

    move-result v0

    if-nez v0, :cond_17

    .line 284
    :cond_16
    :goto_16
    return-void

    .line 278
    :cond_17
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;->col:Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;->col:Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;

    iget-object v1, v1, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->mac:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;->std:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->set(Landroid/content/Context;Ljava/lang/String;I)V

    .line 280
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;->col:Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->render()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_16

    .line 281
    :catch_2d
    move-exception v0

    .line 282
    const-string v1, "SuitStandard.pick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method
