.class final Lcom/isaigu/gymapp/wearable/ReportBridge$Dismiss;
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
    name = "Dismiss"
.end annotation


# instance fields
.field final d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Dismiss;->d:Landroid/app/Dialog;

    .line 380
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Dismiss;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 388
    :goto_5
    return-void

    .line 386
    :catch_6
    move-exception v0

    goto :goto_5
.end method
