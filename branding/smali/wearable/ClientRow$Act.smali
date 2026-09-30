.class final Lcom/isaigu/gymapp/wearable/ClientRow$Act;
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
    name = "Act"
.end annotation


# instance fields
.field private final u:Lcom/isaigu/gymapp/bean/TrainUser;

.field private final which:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bean/TrainUser;I)V
    .registers 3

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Act;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 165
    iput p2, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Act;->which:I

    .line 166
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 170
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/QuickStart;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 172
    if-nez v0, :cond_e

    .line 182
    :goto_d
    return-void

    .line 175
    :cond_e
    iget v1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Act;->which:I

    if-nez v1, :cond_18

    .line 176
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Act;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ReportScreen;->open(Landroid/app/Activity;Ljava/lang/Object;)V

    goto :goto_d

    .line 177
    :cond_18
    iget v1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Act;->which:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 178
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Act;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientRow;->summary(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V

    goto :goto_d

    .line 180
    :cond_23
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Act;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientRow;->last(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V

    goto :goto_d
.end method
