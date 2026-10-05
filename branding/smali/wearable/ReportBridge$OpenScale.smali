.class final Lcom/isaigu/gymapp/wearable/ReportBridge$OpenScale;
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
    name = "OpenScale"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final u:Lcom/isaigu/gymapp/bean/TrainUser;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 3

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$OpenScale;->a:Landroid/app/Activity;

    .line 518
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$OpenScale;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 519
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$OpenScale;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$OpenScale;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->open(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 524
    return-void
.end method
