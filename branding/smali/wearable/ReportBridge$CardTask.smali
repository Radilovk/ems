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


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/ReportBridge;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;->b:Lcom/isaigu/gymapp/wearable/ReportBridge;

    .line 108
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;->json:Ljava/lang/String;

    .line 109
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;->b:Lcom/isaigu/gymapp/wearable/ReportBridge;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;->json:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/ReportBridge;->cardNow(Ljava/lang/String;)V

    .line 114
    return-void
.end method
