.class final Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignClick;
.super Ljava/lang/Object;
.source "XemsLocalConsent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalConsent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SignClick"
.end annotation


# instance fields
.field private final d:Landroid/app/Dialog;

.field private final done:Lcom/isaigu/gymapp/widget/XemsLocalConsent$Signed;

.field private final pad:Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;Lcom/isaigu/gymapp/widget/XemsLocalConsent$Signed;)V
    .registers 4

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignClick;->d:Landroid/app/Dialog;

    .line 379
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignClick;->pad:Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;

    .line 380
    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignClick;->done:Lcom/isaigu/gymapp/widget/XemsLocalConsent$Signed;

    .line 381
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 385
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignClick;->pad:Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 386
    if-nez v0, :cond_9

    .line 393
    :cond_8
    :goto_8
    return-void

    .line 389
    :cond_9
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignClick;->d:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 390
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignClick;->done:Lcom/isaigu/gymapp/widget/XemsLocalConsent$Signed;

    if-eqz v1, :cond_8

    .line 391
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignClick;->done:Lcom/isaigu/gymapp/widget/XemsLocalConsent$Signed;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$Signed;->onSigned(Landroid/graphics/Bitmap;J)V

    goto :goto_8
.end method
