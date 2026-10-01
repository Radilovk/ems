.class final Lcom/isaigu/gymapp/wearable/ClientRow$OpenCard;
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
    name = "OpenCard"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final u:Lcom/isaigu/gymapp/bean/TrainUser;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 3

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$OpenCard;->a:Landroid/app/Activity;

    .line 290
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ClientRow$OpenCard;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 291
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 295
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 296
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_15

    move-object v0, p1

    .line 297
    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u0422\u044a\u0440\u0441\u0438 \u0441\u0435\u2026"

    const-string v2, "Looking\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :cond_15
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/wearable/ClientRow$FindCard;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ClientRow$OpenCard;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ClientRow$OpenCard;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v1, v2, v3, p1}, Lcom/isaigu/gymapp/wearable/ClientRow$FindCard;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;Landroid/view/View;)V

    const-string v2, "xems-card-find"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 300
    return-void
.end method
