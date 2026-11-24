.class final Lcom/isaigu/gymapp/ai/AiTrain$Quick;
.super Ljava/lang/Object;
.source "AiTrain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiTrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Quick"
.end annotation


# instance fields
.field final live:Z

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 1325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1326
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Quick;->text:Ljava/lang/String;

    .line 1327
    iput-boolean p2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Quick;->live:Z

    .line 1328
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1332
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1333
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Quick;->text:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Quick;->live:Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 1334
    return-void
.end method
