.class final Lcom/isaigu/gymapp/wearable/ReportScreen$Cleanup;
.super Ljava/lang/Object;
.source "ReportScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ReportScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cleanup"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final orientation:I

.field final w:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Landroid/app/Activity;I)V
    .registers 4

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ReportScreen$Cleanup;->w:Landroid/webkit/WebView;

    .line 64
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ReportScreen$Cleanup;->a:Landroid/app/Activity;

    .line 65
    iput p3, p0, Lcom/isaigu/gymapp/wearable/ReportScreen$Cleanup;->orientation:I

    .line 66
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportScreen$Cleanup;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/ReportScreen$Cleanup;->orientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_16

    .line 75
    :goto_7
    :try_start_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportScreen$Cleanup;->w:Landroid/webkit/WebView;

    const-string v1, "XemsReport"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportScreen$Cleanup;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_13} :catch_14

    .line 79
    :goto_13
    return-void

    .line 77
    :catch_14
    move-exception v0

    goto :goto_13

    .line 72
    :catch_16
    move-exception v0

    goto :goto_7
.end method
