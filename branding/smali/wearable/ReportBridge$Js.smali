.class final Lcom/isaigu/gymapp/wearable/ReportBridge$Js;
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
    name = "Js"
.end annotation


# instance fields
.field final script:Ljava/lang/String;

.field final w:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Js;->w:Landroid/webkit/WebView;

    .line 185
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Js;->script:Ljava/lang/String;

    .line 186
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Js;->w:Landroid/webkit/WebView;

    if-eqz v0, :cond_c

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Js;->w:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Js;->script:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    .line 196
    :cond_c
    :goto_c
    return-void

    .line 194
    :catch_d
    move-exception v0

    goto :goto_c
.end method
