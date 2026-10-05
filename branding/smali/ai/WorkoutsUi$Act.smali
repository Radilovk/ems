.class final Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;
.super Ljava/lang/Object;
.source "WorkoutsUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WorkoutsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Act"
.end annotation


# instance fields
.field final arg:I

.field final code:I

.field ex:Ljava/lang/String;

.field value:Landroid/widget/TextView;


# direct methods
.method constructor <init>(II)V
    .registers 3

    .prologue
    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1304
    iput p1, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    .line 1305
    iput p2, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    .line 1306
    return-void
.end method

.method private run(I)V
    .registers 5

    .prologue
    .line 1326
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->act(Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 1330
    :goto_3
    return-void

    .line 1327
    :catch_4
    move-exception v0

    .line 1328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WorkoutsUi.act "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1310
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1311
    iget v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->run(I)V

    .line 1312
    return-void
.end method

.method public onIndex(I)V
    .registers 2

    .prologue
    .line 1316
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->run(I)V

    .line 1317
    return-void
.end method

.method public onStep(I)V
    .registers 2

    .prologue
    .line 1321
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->run(I)V

    .line 1322
    return-void
.end method
