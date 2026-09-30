.class final Lcom/isaigu/gymapp/wearable/ClientRow$Upload;
.super Ljava/lang/Object;
.source "ClientRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ClientRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Upload"
.end annotation


# instance fields
.field private final s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private final u:Lcom/isaigu/gymapp/bean/TrainUser;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 3

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Upload;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 287
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Upload;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 288
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 293
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Upload;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/CardPublisher;->force(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 294
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1c

    .line 295
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    const-string v2, "\u041a\u0430\u0447\u0432\u0430 \u0441\u0435\u2026 (\u2248 20 s)"

    const-string v3, "Uploading\u2026 (\u2248 20 s)"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_21

    .line 301
    :goto_20
    return-void

    .line 298
    :catch_21
    move-exception v1

    .line 299
    const-string v2, "ClientRow.upload"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method
