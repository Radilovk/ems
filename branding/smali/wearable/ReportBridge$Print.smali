.class final Lcom/isaigu/gymapp/wearable/ReportBridge$Print;
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
    name = "Print"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final title:Ljava/lang/String;

.field final w:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Print;->a:Landroid/app/Activity;

    .line 256
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Print;->w:Landroid/webkit/WebView;

    .line 257
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Print;->title:Ljava/lang/String;

    .line 258
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Print;->a:Landroid/app/Activity;

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 264
    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Print;->w:Landroid/webkit/WebView;

    if-eqz v1, :cond_2c

    .line 265
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Print;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Print;->w:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Print;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object v2

    new-instance v3, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    sget-object v4, Landroid/print/PrintAttributes$MediaSize;->ISO_A4:Landroid/print/PrintAttributes$MediaSize;

    .line 266
    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    .line 265
    invoke-virtual {v0, v1, v2, v3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 271
    :cond_2c
    :goto_2c
    return-void

    .line 268
    :catch_2d
    move-exception v0

    .line 269
    const-string v1, "report"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "print: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method
