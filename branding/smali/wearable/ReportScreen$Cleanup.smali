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
.field final w:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ReportScreen$Cleanup;->w:Landroid/webkit/WebView;

    .line 59
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportScreen$Cleanup;->w:Landroid/webkit/WebView;

    const-string v1, "XemsReport"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportScreen$Cleanup;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    .line 68
    :goto_c
    return-void

    .line 66
    :catch_d
    move-exception v0

    goto :goto_c
.end method
