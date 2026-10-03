.class final Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;
.super Ljava/lang/Object;
.source "ScaleSources.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Open"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field pop:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;->a:Landroid/app/Activity;

    .line 374
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 378
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 379
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;->pop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_c

    .line 381
    :try_start_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_12

    .line 385
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Open;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->open(Landroid/app/Activity;)V

    .line 386
    return-void

    .line 382
    :catch_12
    move-exception v0

    goto :goto_c
.end method
