.class final Lcom/isaigu/gymapp/wearable/ClientRow$OpenReport;
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
    name = "OpenReport"
.end annotation


# instance fields
.field private final id:J

.field private final s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private final u:Lcom/isaigu/gymapp/bean/TrainUser;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Lcom/isaigu/gymapp/bean/TrainUser;J)V
    .registers 6

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$OpenReport;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 410
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ClientRow$OpenReport;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 411
    iput-wide p3, p0, Lcom/isaigu/gymapp/wearable/ClientRow$OpenReport;->id:J

    .line 412
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 416
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/QuickStart;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 418
    :try_start_8
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$OpenReport;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_19

    .line 421
    :goto_f
    if-eqz v0, :cond_18

    .line 422
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$OpenReport;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/ClientRow$OpenReport;->id:J

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/ReportScreen;->open(Landroid/app/Activity;Ljava/lang/Object;J)V

    .line 424
    :cond_18
    return-void

    .line 419
    :catch_19
    move-exception v1

    goto :goto_f
.end method
