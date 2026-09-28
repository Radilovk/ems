.class final Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;
.super Ljava/lang/Object;
.source "ReportBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ReportBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CardTask"
.end annotation


# instance fields
.field final b:Lcom/isaigu/gymapp/wearable/ReportBridge;

.field final json:Ljava/lang/String;

.field final refreshKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/ReportBridge;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;-><init>(Lcom/isaigu/gymapp/wearable/ReportBridge;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method constructor <init>(Lcom/isaigu/gymapp/wearable/ReportBridge;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;->b:Lcom/isaigu/gymapp/wearable/ReportBridge;

    .line 181
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;->json:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;->refreshKey:Ljava/lang/String;

    .line 183
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;->refreshKey:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;->b:Lcom/isaigu/gymapp/wearable/ReportBridge;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;->json:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;->refreshKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/ReportBridge;->refreshNow(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_d
    return-void

    .line 190
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;->b:Lcom/isaigu/gymapp/wearable/ReportBridge;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;->json:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/ReportBridge;->cardNow(Ljava/lang/String;)V

    goto :goto_d
.end method
